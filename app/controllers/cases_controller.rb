class CasesController < ApplicationController

  def setview
    puts "! ! ! !  ENTER SETVIEW ! ! ! ! "
	
	
    mylname = params[:lname]
    myfname = params[:fname]
    mycaseid = params[:caseid]
    mypatid = params[:patid]
	
	
    puts "VARS: "
    puts mylname
    puts myfname
    puts mycaseid
    puts mypatid
    puts "VARS: "

    puts "SIZE: "
    puts mylname.size
    puts myfname.size
    puts mycaseid.size
    puts mypatid.size
    puts "SIZE: "
   
    str = ""
    bindit = []
    bind1 = ""
    bind2 = ""
    bind3 = ""
    bind4 = ""
    bindct = 0

    puts mylname.size
    if mylname.size != 0
       str = "plname LIKE ?"
       bind1 = mylname
       bindct = bindct + 1
       puts "--> " + str
       puts  "%%%%%%%%%%%%%%%%"
       puts bindct
       puts bind1
       puts bind2
       puts bind3
       puts bind4
       puts  "%%%%%%%%%%%%%%%%"
    end

    puts myfname.size
    if myfname.size != 0
       if bindct == 1 
          str = str + " AND pfname LIKE ?"
          bind2 = myfname
       else 
          str = "pfname LIKE ?"
          bind1 = myfname
       end
       bindct = bindct + 1
       puts "--> " + str
       puts  "%%%%%%%%%%%%%%%%"
       puts bindct
       puts bind1
       puts bind2
       puts bind3
       puts bind4
       puts  "%%%%%%%%%%%%%%%%"
    end

    puts mycaseid.size
    if mycaseid.size != 0
       if bindct == 2 
          str = str + " AND caseid LIKE ?"
          bind3 = mycaseid
       elsif bindct == 1
          str = str + " AND caseid LIKE ?"
          bind2 = mycaseid
       else
          str = "caseid LIKE ?"
          bind1 = mycaseid
       end 
       bindct = bindct + 1
       puts "--> " + str
       puts  "%%%%%%%%%%%%%%%%"
       puts bindct
       puts bind1
       puts bind2
       puts bind3
       puts bind4
       puts  "%%%%%%%%%%%%%%%%"
    end

    puts mypatid.size
    if mypatid.size != 0
       if bindct == 3 
          str = str + " AND patid1 LIKE ?"
          bind4 = mypatid
       elsif bindct == 2
          str = str + " AND patid1 LIKE ?"
          bind3 = mypatid
       elsif bindct == 1
          str = str + " AND patid1 LIKE ?"
          bind2 = mypatid
       else
          str = "patid1 LIKE ?"
          bind1 = mypatid
       end 
	   
	   
       bindct = bindct + 1
       puts "--> " + str
       puts  "%%%%%%%%%%%%%%%%"
       puts bindct
       puts bind1
       puts bind2
       puts bind3
       puts bind4
       puts  "%%%%%%%%%%%%%%%%"
    end
	
    puts "STR: "
    puts str 
	
    if bindct == 1
       @results = Case.where(str, bind1+'%').limit(20).order("plname,pfname ASC")
	   puts "RESULTS LENGTH: "
	   puts @results.length
    elsif bindct == 2 
       @results = Case.where(str, bind1+'%', bind2+'%').limit(20).order("plname,pfname ASC")
    elsif bindct == 3
       @results = Case.where(str, bind1+'%', bind2+'%', bind3+'%').limit(20).order("plname,pfname ASC")
    elsif bindct == 4
       @results = Case.where(str, bind1+'%', bind2+'%', bind3+'%',bind4+'%').limit(20).order("plname,pfname ASC")
    end
    respond_to do |format|
      format.js
    end
    puts "! ! ! !  EXIT  SETVIEW ! ! ! ! "
  end
 
	
   def setloc
	puts "BEGIN setloc:"
    @locs = Loc.all
    puts "Size: "
    puts @locs.size	
	respond_to do |format|
      format.js 
      format.xml  { render :xml => @cases }
    end
   end

   def setcrna
	puts "BEGIN setcrna:"
    @crnas = Crna.all
    puts "Size: "
    puts @crnas.size	
	respond_to do |format|
      format.js 
      format.xml  { render :xml => @cases }
    end
   end
 
   def setprov
	puts "BEGIN setprov:"
    @provs = Prov.all
    puts "Size: "
    puts @provs.size	
	respond_to do |format|
      format.js 
      format.xml  { render :xml => @cases }
    end
   end
 
   def setsurg
	puts "BEGIN setsurg:"
    @surgs = Surg.all
    puts "Size: "
    puts @surgs.size	
	respond_to do |format|
      format.js 
      format.xml  { render :xml => @cases }
    end
   end
  
   def setuser
	puts "BEGIN setuser:"
    @users = User.all
    puts "Size: "
    puts @users.size	
	respond_to do |format|
      format.js 
      format.xml  { render :xml => @cases }
    end
   end
 
 
  def admin
	respond_to do |format|
      format.js 
      format.xml  { render :xml => @cases }
    end
  end	
 
 
  def addcase
    @case = Case.new
 	respond_to do |format|
      format.js 
      format.xml  { render :xml => @cases }
    end
  end	
 
 
  def menu
	respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cases }
    end
  end



 # GET /cases
  # GET /cases.xml
  def index
    @cases = Case.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cases }
    end
  end

  def viewcase
    @case = Case.find(params[:mysid])
    respond_to do |format|
      format.js 
      format.xml  { render :xml => @case }
    end
  end
  
  
  
  # GET /cases/1
  # GET /cases/1.xml
  def show
    @case = Case.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @case }
    end
  end

  # GET /cases/new
  # GET /cases/new.xml
  def new
    @case = Case.new

    respond_to do |format|
      format.js 
      format.xml  { render :xml => @case }
    end
  end

  # GET /cases/1/edit
  def edit
    @case = Case.find(params[:id])
    respond_to do |format|
      format.js 
      format.xml  { render :xml => @case }
    end
  end

  # POST /cases
  # POST /cases.xml
  def create
  
    mytimestamp =  Time.now.localtime.strftime("%y%m%d-%H%M%S")
    mytime = "%s" % Time.now.to_i

    @case = Case.new(params[:case])
	@case.caseid = mytimestamp
	
    respond_to do |format|
      if @case.save
        format.js  
        format.xml  { render :xml => @case, :status => :created, :location => @case }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @case.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cases/1
  # PUT /cases/1.xml
  def update
    @case = Case.find(params[:id])
      
	
    respond_to do |format|
      if @case.update_attributes(params[:case])
	  
        format.js 
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @case.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cases/1
  # DELETE /cases/1.xml
  def destroy
    @case = Case.find(params[:id])
    @case.destroy

    respond_to do |format|
      format.html { redirect_to(cases_url) }
      format.xml  { head :ok }
    end
  end
end
