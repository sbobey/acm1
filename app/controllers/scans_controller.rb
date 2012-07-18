class ScansController < ApplicationController
 
   def saveaspdf
	 puts "BEGIN saveaspdf:"
	 mycaseid = params[:caseid]
     puts "MYCASEIS: "
     puts mycaseid
	 mytime = Time.now.to_i
	 		 
     scan = Scan.new
     scan.caseid = mycaseid
	 scan.time_sqequence = mytime
     scan.save
     @myscan = Scan.where("caseid = ? and time_sqequence = ?", mycaseid ,mytime).first	 
	 puts "MYSCAN SIZE: "
     puts @myscan.caseid	
	 puts @myscan.time_sqequence
	 tmp = @myscan.id
	 @myid = tmp.to_s.rjust(8, '0')
	 @remotename = @myid[0,2] + "/" + @myid[2,2] + "/" + @myid[4,2] + "/" + @myid[6,2]
     @localname = @myid + "-" + mycaseid + ".pdf"
     puts "FILE NAMES: "
     puts @remotename
     puts @localname
     @myscan.orig_filename = @localname 
     @myscan.final_filename = @remotename   	 
	 @myscan.update_attributes(@myscan)
	 
     puts "MYID: "
     puts @myid	 
     respond_to do |format|
        format.js  
	 end
  end 
 
  
  
  def addscan
	puts "BEGIN addscan:"
	@mycaseid = params[:id]
    @scans = Scan.where("caseid = ?",@mycaseid).order("caseid ASC")	
    puts "Size: "
    puts @scans.size	
 
    respond_to do |format|
      format.js 
      format.xml  { render :xml => @scans }
    end
  end
 
   
  # GET /scans
  # GET /scans.xml
  def index
    @scans = Scan.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @scans }
    end
  end

  # GET /scans/1
  # GET /scans/1.xml
  def show
    @scan = Scan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @scan }
    end
  end

  # GET /scans/new
  # GET /scans/new.xml
  def new
    @scan = Scan.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @scan }
    end
  end

  # GET /scans/1/edit
  def edit
    @scan = Scan.find(params[:id])
  end

  # POST /scans
  # POST /scans.xml
  def create
    @scan = Scan.new(params[:scan])

    respond_to do |format|
      if @scan.save
        format.html { redirect_to(@scan, :notice => 'Scan was successfully created.') }
        format.xml  { render :xml => @scan, :status => :created, :location => @scan }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @scan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /scans/1
  # PUT /scans/1.xml
  def update
    @scan = Scan.find(params[:id])

    respond_to do |format|
      if @scan.update_attributes(params[:scan])
        format.html { redirect_to(@scan, :notice => 'Scan was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @scan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /scans/1
  # DELETE /scans/1.xml
  def destroy
    @scan = Scan.find(params[:id])
    @scan.destroy

    respond_to do |format|
      format.html { redirect_to(scans_url) }
      format.xml  { head :ok }
    end
  end
end
