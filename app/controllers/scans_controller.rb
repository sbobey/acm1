class ScansController < ApplicationController

        def uploadc

           puts "UPLOAD FILE: ! ! ! ! !"
           puts "UPLOAD FILE: ! ! ! ! !"
           puts "UPLOAD FILE: ! ! ! ! !"
           puts "UPLOAD FILE: ! ! ! ! !"
           puts "UPLOAD FILE: ! ! ! ! !"

           uploaded_io = params[:myfile]

           File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'w') do |file|
              file.write(uploaded_io.read)
           end

           respond_to do |format|
		format.html  
           end

        end

 
	def upload
		puts "UPLOAD FILE: ! ! ! ! !"
		puts "UPLOAD FILE: ! ! ! ! !"
		puts "UPLOAD FILE: ! ! ! ! !"
		puts params
		puts "UPLOAD FILE: ! ! ! ! !"
		puts "UPLOAD FILE: ! ! ! ! !"
		
	
		if params.has_key?(:RemoteFile)
		
			puts "GOOD ONE:"
			puts params[:qwerty]
			uploaded_io = params[:RemoteFile]
			tmp = uploaded_io.original_filename
			puts "TMP: "
			puts tmp
			tmp2 = tmp.gsub("-","/")
			puts tmp2
	#		File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
			File.open(tmp2, 'wb') do |file|
				file.write(uploaded_io.read)
			end
		else
			puts "BAD ONE ! ! !"
		end	
		
		puts "LEAVING: "
		puts "LEAVING: "
		puts "LEAVING: "
		
		respond_to do |format|
			format.html  
		end
	end  
 
 
   def saveaspdf
	 puts "BEGIN saveaspdf:"
	 mycaseid = params[:caseid]
	 @mycaseid = mycaseid
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
	 @remotename = "-data-" + @myid[0,2] + "-" + @myid[2,2] + "-" + @myid[4,2] + "-" + @myid[6,2]
	 @catalogname = @remotename.gsub("-","/")
 	 @localname = @myid + "-" + mycaseid + ".pdf"
     puts "FILE NAMES: "
     puts @remotename
     puts @localname
     @myscan.orig_filename = @localname 
     @myscan.final_filename = @catalogname   	 
	 @myscan.update_attributes(@myscan)
	 
     puts "MYID: "
     puts @myid	 
     respond_to do |format|
        format.js  
	 end
  end 
 
  def viewscan
 	 @fname = params[:myfile]
#	 @fname = "/data/acmscans/" + @fname
	 puts "FILENAME: "
	 puts @fname
	 puts "EXISTS ?"
	 puts FileTest.exists?(@fname)
	 
	 if FileTest.exists?(@fname)
       send_file(@fname, :type => 'application/pdf', :disposition => 'inline')
     else
	   pdf = Prawn::Document.new
       pdf.text "File Could Not Be Found: " + @fname
	   pdf.text " "
	   pdf.text @fname 
	   pdf.render_file @fname
       send_file(@fname, :type => 'application/pdf', :disposition => 'inline')
	 end 
  end

  def setscan
	puts "BEGIN setscan:"
	@mycaseid = params[:caseid]
    @scans = Scan.where("caseid = ?",@mycaseid).order("caseid ASC")	
    puts "Size: "
    puts @scans.size	
 
    respond_to do |format|
      format.js 
      format.xml  { render :xml => @scans }
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
