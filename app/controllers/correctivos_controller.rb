class CorrectivosController < ApplicationController
  # GET /correctivos
  # GET /correctivos.xml
  def index
    @correctivos = Correctivo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @correctivos }
    end
  end

  # GET /correctivos/1
  # GET /correctivos/1.xml
  def show
    @correctivo = Correctivo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @correctivo }
    end
  end

  # GET /correctivos/new
  # GET /correctivos/new.xml
  def new
    @correctivo = Correctivo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @correctivo }
    end
  end

  # GET /correctivos/1/edit
  def edit
    @correctivo = Correctivo.find(params[:id])
  end

  # POST /correctivos
  # POST /correctivos.xml
  def create
    @correctivo = Correctivo.new(params[:correctivo])

    respond_to do |format|
      if @correctivo.save
        format.html { redirect_to(@correctivo, :notice => 'Correctivo was successfully created.') }
        format.xml  { render :xml => @correctivo, :status => :created, :location => @correctivo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @correctivo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /correctivos/1
  # PUT /correctivos/1.xml
  def update
    @correctivo = Correctivo.find(params[:id])

    respond_to do |format|
      if @correctivo.update_attributes(params[:correctivo])
        format.html { redirect_to(@correctivo, :notice => 'Correctivo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @correctivo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /correctivos/1
  # DELETE /correctivos/1.xml
  def destroy
    @correctivo = Correctivo.find(params[:id])
    @correctivo.destroy

    respond_to do |format|
      format.html { redirect_to(correctivos_url) }
      format.xml  { head :ok }
    end
  end
end
