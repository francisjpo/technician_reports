class CiudadesController < ApplicationController
  # GET /ciudades
  # GET /ciudades.xml
  def index
    @ciudades = Ciudad.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ciudades }
    end
  end

  # GET /ciudades/1
  # GET /ciudades/1.xml
  def show
    @ciudad = Ciudad.find(params[:id])
    @obras = Obra.find(:all)
    @operarios = Operario.find(:all)
    @partes = Parte.find(:all, :order => 'id DESC')

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ciudad }
    end
  end

  # GET /ciudades/new
  # GET /ciudades/new.xml
  def new
    @ciudad = Ciudad.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ciudad }
    end
  end

  # GET /ciudades/1/edit
  def edit
    @ciudad = Ciudad.find(params[:id])
  end

  # POST /ciudades
  # POST /ciudades.xml
  def create
    @ciudad = Ciudad.new(params[:ciudad])

    respond_to do |format|
      if @ciudad.save
        flash[:notice] = 'Ciudad creada.'
        format.html { redirect_to(@ciudad) }
        format.xml  { render :xml => @ciudad, :status => :created, :location => @ciudad }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ciudad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ciudades/1
  # PUT /ciudades/1.xml
  def update
    @ciudad = Ciudad.find(params[:id])

    respond_to do |format|
      if @ciudad.update_attributes(params[:ciudad])
        flash[:notice] = 'Ciudad actualizada.'
        format.html { redirect_to(@ciudad) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ciudad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ciudades/1
  # DELETE /ciudades/1.xml
  def destroy
    @ciudad = Ciudad.find(params[:id])
    @ciudad.destroy

    respond_to do |format|
      format.html { redirect_to(ciudades_url) }
      format.xml  { head :ok }
    end
  end
end
