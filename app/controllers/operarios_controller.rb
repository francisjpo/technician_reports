class OperariosController < ApplicationController
  # GET /operarios
  # GET /operarios.xml
  def index
    @operarios = Operario.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @operarios }
      format.pdf {render :layout => false}
    end
  end

  # GET /operarios/1
  # GET /operarios/1.xml
  def show
    @operario = Operario.find(params[:id])
    @obras = Obra.find(:all, :order => 'nombre')
    @partes = Parte.find(:all, :order => 'id DESC')
    @ciudades = Ciudad.find(:all, :order => 'nombre')

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @operario }
      format.pdf {render :layout => false}
    end
  end

  # GET /operarios/new
  # GET /operarios/new.xml
  def new
    @operario = Operario.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @operario }
    end
  end

  # GET /operarios/1/edit
  def edit
    @operario = Operario.find(params[:id])
  end

  # POST /operarios
  # POST /operarios.xml
  def create
    @operario = Operario.new(params[:operario])

    respond_to do |format|
      if @operario.save
        flash[:notice] = 'Operario creado.'
        format.html { redirect_to(@operario) }
        format.xml  { render :xml => @operario, :status => :created, :location => @operario }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @operario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /operarios/1
  # PUT /operarios/1.xml
  def update
    @operario = Operario.find(params[:id])

    respond_to do |format|
      if @operario.update_attributes(params[:operario])
        flash[:notice] = 'Operario actualizado.'
        format.html { redirect_to(@operario) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @operario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /operarios/1
  # DELETE /operarios/1.xml
  def destroy
    @operario = Operario.find(params[:id])
    @operario.destroy

    respond_to do |format|
      format.html { redirect_to(operarios_url) }
      format.xml  { head :ok }
    end
  end
end
