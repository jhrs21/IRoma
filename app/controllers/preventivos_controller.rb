class PreventivosController < ApplicationController
  # GET /preventivos
  # GET /preventivos.xml
  def index
    @preventivos = Preventivo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @preventivos }
    end
  end

  # GET /preventivos/1
  # GET /preventivos/1.xml
  def show
    @preventivo = Preventivo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @preventivo }
    end
  end

  # GET /preventivos/new
  # GET /preventivos/new.xml
  def new
    @preventivo = Preventivo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @preventivo }
    end
  end

  # GET /preventivos/1/edit
  def edit
    @preventivo = Preventivo.find(params[:id])
  end

  # POST /preventivos
  # POST /preventivos.xml
  def create
    @preventivo = Preventivo.new(params[:preventivo])

    respond_to do |format|
      if @preventivo.save
        format.html { redirect_to(@preventivo, :notice => 'Preventivo was successfully created.') }
        format.xml  { render :xml => @preventivo, :status => :created, :location => @preventivo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @preventivo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /preventivos/1
  # PUT /preventivos/1.xml
  def update
    @preventivo = Preventivo.find(params[:id])

    respond_to do |format|
      if @preventivo.update_attributes(params[:preventivo])
        format.html { redirect_to(@preventivo, :notice => 'Preventivo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @preventivo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /preventivos/1
  # DELETE /preventivos/1.xml
  def destroy
    @preventivo = Preventivo.find(params[:id])
    @preventivo.destroy

    respond_to do |format|
      format.html { redirect_to(preventivos_url) }
      format.xml  { head :ok }
    end
  end
end
