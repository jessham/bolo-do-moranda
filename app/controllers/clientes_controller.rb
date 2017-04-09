class ClientesController < ApplicationController
  
  layout 'application'
  
  def index
    @cliente = Cliente.find(params[:id])
  end
  
  def edit
    @cliente = Cliente.find(params[:id])
  end
  
  def new
    @cliente = Cliente.new
  end
  
  def create
    flash[:notice] = nil
    @cliente = Cliente.new(user_params)
    
    #if Cliente.where(:username => params[:username]) != nil
    #  flash[:notice] = "Nome de usuário existente."
    #  redirect_to new_cliente_path and return
    #end
    
    #if params[:senha] == params[:confirmacao_senha]
      if @cliente.save
        session[:cliente_id] = @cliente.id
        flash[:notice] = nil
        redirect_to home_index_path
      else
        flash[:notice] = "Não foi possível completar o cadastro. Por favor verificar os dados novamente."
        redirect_to new_cliente_path and return
      end
    #else
    #  flash[:notice] = "Senha e confirmação de senha inválidos."
    #  redirect_to new_cliente_path and return
    #end
  end
  
  def update
    @cliente = Cliente.find(params[:id])
    @cliente.update_attributes(user_params)
    
    if @cliente.save
      flash[:notice] = "Dados atualizados."
      redirect_to edit_cliente_path(@cliente)
    else
      flash[:notice] = "Não foi possível atualizar os dados. Por favor verificar os dados novamente."
      redirect_to edit_cliente_path(@cliente)
    end
  end
  
  private

    def user_params
      params.require(:cliente).permit(:email, :nome, :telefone,
      :logradouro, :numero, :complemento, :bairro, :cidade, :estado, :cep, :password, :password_confirmation)
    end
end
