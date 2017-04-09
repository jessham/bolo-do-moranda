class SessionsController < ApplicationController  
  
  layout 'application'
  
  def new
    
  end
  
  def create
    @cliente = Cliente.find_by_email(params[:email])
    flash[:notice] = nil
    
    if @cliente && @cliente.authenticate(params[:password])
      session[:cliente_id] = @cliente.id
      flash[:notice] = nil
      redirect_to home_index_path
    else
      flash[:notice] = "Não foi possível completar o login. Por favor verificar os dados novamente."
      redirect_to '/login'
    end
  end
  
  def destroy
    session[:cliente_id] = nil
    redirect_to home_index_path
  end
end
