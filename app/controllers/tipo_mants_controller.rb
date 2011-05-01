class TipoMantsController < ApplicationController
  # GET /tipo_mants
  # GET /tipo_mants.xml
  def index
    @tipo_mants = TipoMant.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tipo_mants }
    end
  end

  # GET /tipo_mants/1
  # GET /tipo_mants/1.xml
  def show
    @tipo_mant = TipoMant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tipo_mant }
    end
  end

  # GET /tipo_mants/new
  # GET /tipo_mants/new.xml
  def new
    @tipo_mant = TipoMant.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tipo_mant }
    end
  end

  # GET /tipo_mants/1/edit
  def edit
    @tipo_mant = TipoMant.find(params[:id])
  end

  # POST /tipo_mants
  # POST /tipo_mants.xml
  def create
    @tipo_mant = TipoMant.new(params[:tipo_mant])

    respond_to do |format|
      if @tipo_mant.save
        format.html { redirect_to(@tipo_mant, :notice => 'Tipo mant was successfully created.') }
        format.xml  { render :xml => @tipo_mant, :status => :created, :location => @tipo_mant }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tipo_mant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_mants/1
  # PUT /tipo_mants/1.xml
  def update
    @tipo_mant = TipoMant.find(params[:id])

    respond_to do |format|
      if @tipo_mant.update_attributes(params[:tipo_mant])
        format.html { redirect_to(@tipo_mant, :notice => 'Tipo mant was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tipo_mant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_mants/1
  # DELETE /tipo_mants/1.xml
  def destroy
    @tipo_mant = TipoMant.find(params[:id])
    @tipo_mant.destroy

    respond_to do |format|
      format.html { redirect_to(tipo_mants_url) }
      format.xml  { head :ok }
    end
  end
end
