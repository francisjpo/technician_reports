class InicioController < ApplicationController
    # GET /partes
    # GET /partes.xml
    def index
      @partes = Parte.all
      @operarios = Operario.find(:all)
      @obras = Obra.find(:all)
      @ciudades = Ciudad.find(:all)

      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @partes }
        format.pdf {render :layout => false}
      end
    end

    # GET /partes/1
    # GET /partes/1.xml
    def show
      @parte = Parte.find(params[:id])
      @operarios = Operario.find(:all)
      @obras = Obra.find(:all)
      @ciudades = Ciudad.find(:all)
      @materiales = Material.find(:all)

      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @parte }
        format.pdf {render :layout => false}
      end
    end

    # GET /partes/new
    # GET /partes/new.xml
    def new
      @parte = Parte.new
      @operarios = Operario.find(:all)
      @obras = Obra.find(:all)
      @ciudades = Ciudad.find(:all)
      @materiales = Material.find(:all)

      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @parte }
      end
    end

    # GET /partes/1/edit
    def edit
      @parte = Parte.find(params[:id])
      @operarios = Operario.find(:all)
      @obras = Obra.find(:all)
      @ciudades = Ciudad.find(:all)
      @materiales = Material.find(:all)
    end

    # POST /partes
    # POST /partes.xml
    def create
      @parte = Parte.new(params[:parte])
      @operarios = Operario.find(:all)
      @obras = Obra.find(:all)
      @ciudades = Ciudad.find(:all)
      @materiales = Material.find(:all)

      respond_to do |format|
        if @parte.save
          flash[:notice] = 'Parte creado.'
          format.html { redirect_to(@parte) }
          format.xml  { render :xml => @parte, :status => :created, :location => @parte }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @parte.errors, :status => :unprocessable_entity }
        end
      end
    end

    # PUT /partes/1
    # PUT /partes/1.xml
    def update
      @parte = Parte.find(params[:id])
      @operarios = Operario.find(:all)
      @obras = Obra.find(:all)
      @ciudades = Ciudad.find(:all)
      @materiales = Material.find(:all)

      respond_to do |format|
        if @parte.update_attributes(params[:parte])
          flash[:notice] = 'Parte actualizado.'
          format.html { redirect_to(@parte) }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @parte.errors, :status => :unprocessable_entity }
        end
      end
    end

    # DELETE /partes/1
    # DELETE /partes/1.xml
    def destroy
      @parte = Parte.find(params[:id])
      @parte.destroy

      respond_to do |format|
        format.html { redirect_to(partes_url) }
        format.xml  { head :ok }
      end
    end
  end
