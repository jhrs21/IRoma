class CentralsController < ApplicationController
  # GET /centrals
  # GET /centrals.xml
  def index
    @centrals = Central.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @centrals }
    end
  end

  # GET /centrals/1
  # GET /centrals/1.xml
  def show
    @central = Central.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @central }
    end
  end

  # GET /centrals/new
  # GET /centrals/new.xml
  def new
    @central = Central.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @central }
    end
  end

  # GET /centrals/1/edit
  def edit
    @central = Central.find(params[:id])
  end

  # POST /centrals
  # POST /centrals.xml
  def create
    @central = Central.new(params[:central])

    respond_to do |format|
      if @central.save
        format.html { redirect_to(@central, :notice => 'Central was successfully created.') }
        format.xml  { render :xml => @central, :status => :created, :location => @central }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @central.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /centrals/1
  # PUT /centrals/1.xml
  def update
    @central = Central.find(params[:id])

    respond_to do |format|
      if @central.update_attributes(params[:central])
        format.html { redirect_to(@central, :notice => 'Central was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @central.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /centrals/1
  # DELETE /centrals/1.xml
  def destroy
    @central = Central.find(params[:id])
    @central.destroy

    respond_to do |format|
      format.html { redirect_to(centrals_url) }
      format.xml  { head :ok }
    end
  end
end
