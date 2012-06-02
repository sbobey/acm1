class AddpsController < ApplicationController
  # GET /addps
  # GET /addps.xml
  def index
    @addps = Addp.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @addps }
    end
  end

  # GET /addps/1
  # GET /addps/1.xml
  def show
    @addp = Addp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @addp }
    end
  end

  # GET /addps/new
  # GET /addps/new.xml
  def new
    @addp = Addp.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @addp }
    end
  end

  # GET /addps/1/edit
  def edit
    @addp = Addp.find(params[:id])
  end

  # POST /addps
  # POST /addps.xml
  def create
    @addp = Addp.new(params[:addp])

    respond_to do |format|
      if @addp.save
        format.html { redirect_to(@addp, :notice => 'Addp was successfully created.') }
        format.xml  { render :xml => @addp, :status => :created, :location => @addp }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @addp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /addps/1
  # PUT /addps/1.xml
  def update
    @addp = Addp.find(params[:id])

    respond_to do |format|
      if @addp.update_attributes(params[:addp])
        format.html { redirect_to(@addp, :notice => 'Addp was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @addp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /addps/1
  # DELETE /addps/1.xml
  def destroy
    @addp = Addp.find(params[:id])
    @addp.destroy

    respond_to do |format|
      format.html { redirect_to(addps_url) }
      format.xml  { head :ok }
    end
  end
end
