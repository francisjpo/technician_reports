class LoginController < ApplicationController
  def index
    render :action => 'login'
    @operarios = Operario.find(:all)
  end

  def login
    @operarios = Operario.find(:all)
  end
  
  def do_login
    @operarios = Operario.find(:all)
    username = params[:username]
    password = params[:password]
    @operarios.each do |operario|
      if operario.id == 1       # Administrador == Primer operario
        @admin = operario.usuario
        @pass = operario.contrasena
      end
    end
    if (username == @admin) && (password == @pass)
      redirect_to :controller => 'inicio', :action =>'index'
    else
      redirect_to :action => 'login'
      flash[:notice] = 'Usuario no válido'
    end
  end
end
