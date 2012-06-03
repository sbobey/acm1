class SurgsController < ApplicationController
  # GET /surgs
  # GET /surgs.xml
  def index
    @surgs = Surg.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @surgs }
    end
  end

  # GET /surgs/1
  # GET /surgs/1.xml
  def show
    @surg = Surg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @surg }
    end
  end

  # GET /surgs/new
  # GET /surgs/new.xml
  def new
    @surg = Surg.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @surg }
    end
  end

  # GET /surgs/1/edit
  def edit
    @surg = Surg.find(params[:id])
  end

  # POST /surgs
  # POST /surgs.xml
  def create
    @surg = Surg.new(params[:surg])

    respond_to do |format|
      if @surg.save
        format.html { redirect_to(@surg, :notice => 'Surg was successfully created.') }
        format.xml  { render :xml => @surg, :status => :created, :location => @surg }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @surg.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /surgs/1
  # PUT /surgs/1.xml
  def update
    @surg = Surg.find(params[:id])

    respond_to do |format|
      if @surg.update_attributes(params[:surg])
        format.html { redirect_to(@surg, :notice => 'Surg was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @surg.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /surgs/1
  # DELETE /surgs/1.xml
  def destroy
    @surg = Surg.find(params[:id])
    @surg.destroy

    respond_to do |format|
      format.html { redirect_to(surgs_url) }
      format.xml  { head :ok }
    end
  end
end