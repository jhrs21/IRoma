class RepuestosController < ApplicationController
  # GET /repuestos
  # GET /repuestos.xml
  def index
    @repuestos = Repuesto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @repuestos }
    end
  end

  # GET /repuestos/1
  # GET /repuestos/1.xml
  def show
    @repuesto = Repuesto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @repuesto }
    end
  end

  # GET /repuestos/new
  # GET /repuestos/new.xml
  def new
    @repuesto = Repuesto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @repuesto }
    end
  end

  # GET /repuestos/1/edit
  def edit
    @repuesto = Repuesto.find(params[:id])
  end

  # POST /repuestos
  # POST /repuestos.xml
  def create
    @repuesto = Repuesto.new(params[:repuesto])

    respond_to do |format|
      if @repuesto.save
        format.html { redirect_to(@repuesto, :notice => 'Repuesto was successfully created.') }
        format.xml  { render :xml => @repuesto, :status => :created, :location => @repuesto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @repuesto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /repuestos/1
  # PUT /repuestos/1.xml
  def update
    @repuesto = Repuesto.find(params[:id])

    respond_to do |format|
      if @repuesto.update_attributes(params[:repuesto])
        format.html { redirect_to(@repuesto, :notice => 'Repuesto was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @repuesto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /repuestos/1
  # DELETE /repuestos/1.xml
  def destroy
    @repuesto = Repuesto.find(params[:id])
    @repuesto.destroy

    respond_to do |format|
      format.html { redirect_to(repuestos_url) }
      format.xml  { head :ok }
    end
  end
end
