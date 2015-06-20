class ObrasController < ApplicationController
  # GET /obras
  # GET /obras.xml
  def index
    @obras = Obra.all
    @ciudades = Ciudad.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @obras }
      format.pdf {render :layout => false}
    end
  end

  # GET /obras/1
  # GET /obras/1.xml
  def show
    @obra = Obra.find(params[:id])
    @ciudades = Ciudad.find(:all)
    @operarios = Operario.find(:all)
    @partes = Parte.find(:all, :order => 'id DESC')
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @obra }
      format.pdf {render :layout => false}
    end
  end

  # GET /obras/new
  # GET /obras/new.xml
  def new
    @obra = Obra.new
    @ciudades = Ciudad.find(:all, :order => :nombre)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @obra }
    end
  end

  # GET /obras/1/edit
  def edit
    @obra = Obra.find(params[:id])
    @ciudades = Ciudad.find(:all, :order => :nombre)
  end

  # POST /obras
  # POST /obras.xml
  def create
    @obra = Obra.new(params[:obra])
    @ciudades = Ciudad.find(:all)

    respond_to do |format|
      if @obra.save
        flash[:notice] = 'Obra creada.'
        format.html { redirect_to(@obra) }
        format.xml  { render :xml => @obra, :status => :created, :location => @obra }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @obra.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /obras/1
  # PUT /obras/1.xml
  def update
    @obra = Obra.find(params[:id])
    @ciudades = Ciudad.find(:all)

    respond_to do |format|
      if @obra.update_attributes(params[:obra])
        flash[:notice] = 'Obra actualizado.'
        format.html { redirect_to(@obra) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @obra.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /obras/1
  # DELETE /obras/1.xml
  def destroy
    @obra = Obra.find(params[:id])
    @obra.destroy

    respond_to do |format|
      format.html { redirect_to(obras_url) }
      format.xml  { head :ok }
    end
  end
end
