class CarrinhoController < ApplicationController
  before_filter :authorize
  
  layout 'application'
  
  def index
    @carrinhos = Carrinho.where(clientes_id: session[:cliente_id])
    @bolos = Array.new
    
    @carrinhos.each do |c|
      @bolos << Bolo.find_by(id: c.bolos_id)
    end
  end
  
  def new
    @carrinho = Carrinho.new
  end
  
  def create
    @carrinho = Carrinho.new
    @carrinho.clientes_id = session[:cliente_id]
    @carrinho.bolos_id = params[:bolos_id]
    @carrinho.save
    redirect_to carrinho_index_path(session[:cliente_id])
  end
  
  def edit
    
  end
  
  def destroy
    @carrinho = Carrinho.find_by(id: params[:id])
    
    @carrinho.destroy
    redirect_to carrinho_index_path(session[:cliente_id])
  end
  
  private
    def bolo_params
      params.require(:bolo).permit(:nome, :sabor, :descricao, :ingredientes, :preco)
    end
    
    def carrinho_params
      params.require(:carrinho).permit(:clientes_id, :bolos_id)
    end
    
    def carrinho_items_params
      params.require(:carrinho_item).permit(:bolos_id)
    end
end
