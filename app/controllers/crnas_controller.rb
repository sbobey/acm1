class CrnasController < ApplicationController
  # GET /crnas
  # GET /crnas.xml
  def index
    @crnas = Crna.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @crnas }
    end
  end

  # GET /crnas/1
  # GET /crnas/1.xml
  def show
    @crna = Crna.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @crna }
    end
  end

  # GET /crnas/new
  # GET /crnas/new.xml
  def new
    @crna = Crna.new

    respond_to do |format|
      format.js
      format.xml  { render :xml => @crna }
    end
  end

  # GET /crnas/1/edit
  def edit
    @crna = Crna.find(params[:id])
	
    respond_to do |format|
      format.js
      format.xml  { render :xml => @crna }
    end
  end

  # POST /crnas
  # POST /crnas.xml
  def create
    @crna = Crna.new(params[:crna])

    respond_to do |format|
      if @crna.save
        format.js
        format.xml  { render :xml => @crna, :status => :created, :location => @crna }
      else
	    puts "ERRORS ! ! ! ! ! ! : "
	    puts @crna.errors.count
		puts @crna.errors.full_messages
        format.js { render :controller => "application", :action => "errdisplay" }
	    format.xml  { render :xml => @crna.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /crnas/1
  # PUT /crnas/1.xml
  def update
    @crna = Crna.find(params[:id])

    respond_to do |format|
      if @crna.update_attributes(params[:crna])
        format.js
        format.xml  { head :ok }
      else
        format.js { render :controller => "application", :action => "errdisplay" }
        format.xml  { render :xml => @crna.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /crnas/1
  # DELETE /crnas/1.xml
  def destroy
    @crna = Crna.find(params[:id])
    @crna.destroy

    respond_to do |format|
      format.js
      format.xml  { head :ok }
    end
  end
end
