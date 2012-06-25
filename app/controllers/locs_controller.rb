class LocsController < ApplicationController
  # GET /locs
  # GET /locs.xml
  def index
    @locs = Loc.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @locs }
    end
  end

  # GET /locs/1
  # GET /locs/1.xml
  def show
    @loc = Loc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @loc }
    end
  end

  # GET /locs/new
  # GET /locs/new.xml
  def new
    @loc = Loc.new

    respond_to do |format|
      format.js
      format.xml  { render :xml => @loc }
    end
  end

  # GET /locs/1/edit
  def edit
    @loc = Loc.find(params[:id])
	
    respond_to do |format|
      format.js
      format.xml  { render :xml => @loc }
    end
	
  end

  # POST /locs
  # POST /locs.xml
  def create
    @loc = Loc.new(params[:loc])

    respond_to do |format|
      if @loc.save
        format.js 
        format.xml  { render :xml => @loc, :status => :created, :location => @loc }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @loc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /locs/1
  # PUT /locs/1.xml
  def update
    @loc = Loc.find(params[:id])

    respond_to do |format|
      if @loc.update_attributes(params[:loc])
        format.js
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @loc.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /locs/1
  # DELETE /locs/1.xml
  def destroy
    @loc = Loc.find(params[:id])
    @loc.destroy

    respond_to do |format|
      format.js
      format.xml  { head :ok }
    end
  end
end
