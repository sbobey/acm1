class ProvsController < ApplicationController
  # GET /provs
  # GET /provs.xml
  def index
    @provs = Prov.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @provs }
    end
  end

  # GET /provs/1
  # GET /provs/1.xml
  def show
    @prov = Prov.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @prov }
    end
  end

  # GET /provs/new
  # GET /provs/new.xml
  def new
    @prov = Prov.new

    respond_to do |format|
      format.js
      format.xml  { render :xml => @prov }
    end
  end

  # GET /provs/1/edit
  def edit
    @prov = Prov.find(params[:id])
    respond_to do |format|
      format.js
      format.xml  { render :xml => @prov }
    end
	
  end

  # POST /provs
  # POST /provs.xml
  def create
    @prov = Prov.new(params[:prov])

    respond_to do |format|
      if @prov.save
        format.js
        format.xml  { render :xml => @prov, :status => :created, :location => @prov }
      else
	    puts "ERRORS ! ! ! ! ! ! : "
	    puts @prov.errors.count
		puts @prov.errors.full_messages
        format.js { render :controller => "application", :action => "errdisplay" }
	    format.xml  { render :xml => @prov.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /provs/1
  # PUT /provs/1.xml
  def update
    @prov = Prov.find(params[:id])

    respond_to do |format|
      if @prov.update_attributes(params[:prov])
        format.js
        format.xml  { head :ok }
      else
        format.js { render :controller => "application", :action => "errdisplay" }
        format.xml  { render :xml => @prov.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /provs/1
  # DELETE /provs/1.xml
  def destroy
    @prov = Prov.find(params[:id])
    @prov.destroy

    respond_to do |format|
      format.js
      format.xml  { head :ok }
    end
  end
end
