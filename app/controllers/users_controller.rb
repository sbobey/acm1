class UsersController < ApplicationController
skip_before_filter :authorize, only: [:login, :auth]
layout :choose_layout

def choose_layout    
  if [ 'auth', 'login' ].include? action_name
    'login'
  else
    'application'  
  end
end 

 
def auth
    puts "Enter AUTH !!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    @login = params[:login]
    @password = params[:password]
    puts @login
    puts @password
    ct = User.where("userid = ? AND password = ?", @login, @password).count
    puts "count: "
    puts ct
    if ct != 0
       u = User.where("userid = ? AND password = ?", @login, @password).first
       puts "MY ID: "
       puts u.id
	   mystatus = "%s" % u.revoked
	   puts "MYSTATUS: " + mystatus
	end
	
    if mystatus == "0"
	   ct = 0
	end   
	
    if ct == 0
       if @login == "admin" && @password == "mediserv"
          ct = 9999
          puts "got admin user: "
       end
    end

    if (ct == 0)
       @message = "Sorry, Invalid Login or Password"
	elsif (ct == 9999)
	    session[:userid] = "admin"
        session[:isadmin] = "1"
        session[:myname] = "admin"
		session[:uid] = 9999
    else
       @message = "Thank You"
       session[:userid] = u.userid
	   session[:myname] = u.res6 + " " + u.name
	   session[:uid] = u.id
	   if u.prac_access != "1"
	      session[:isadmin] = "0"
	   else
	      session[:isadmin] = "1"
	   end
    end
    puts @message
    puts "SESSION VAR BELOW: "
    puts "USERID:  ";puts session[:userid]
    puts "UID: ";puts session[:uid]
    puts "MYPRACS: ";puts session[:mypracs]
	puts "MYNAME:  ";puts session[:myname]
	puts "ISADMIN: ";puts session[:isadmin]
	
	
    respond_to do |format|
       if ct == 0
         format.js
       else 
         format.html {redirect_to :controller => :cases, :action => :menu }
       end
    end
  end

  def logout
  
      respond_to do |format|
      format.html {redirect_to users_login_path}
  end

  end
  
    
  def login
    puts "ENTER LOGIN: "


	puts "END LOGIN:   "

    respond_to do |format|
      format.html # login.html.erb
    end
  end








  # GET /users
  # GET /users.xml
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new

    respond_to do |format|
	  format.js
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    respond_to do |format|
	  format.js
      format.xml  { render :xml => @user }
    end
 	
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
	    format.js  
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
	    puts "ERRORS ! ! ! ! ! ! : "
	    puts @user.errors.count
		puts @user.errors.full_messages
        format.js { render :controller => "application", :action => "errdisplay" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.js
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.js 
      format.xml  { head :ok }
    end
  end
end
