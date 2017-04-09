class VendaController < ApplicationController
  before_filter :authorize
  
  def index
    @venda = Venda.find_by(clientes_id: session[:cliente_id])
    @vendabolos = Vendabolo.where(clientes_id: session[:cliente_id])
    @bolos = Array.new
    
    @vendabolos.each do |v|
      @bolos << Bolo.find_by(id: v.bolos_id)
    end
  end
  
  def new
    @venda = Venda.new
  end
  
  def create
    if @venda = Venda.find_by(clientes_id: session[:cliente_id])
      @venda.valor_total = @venda.valor_total + params[:valor_total].to_f
      @venda.save
      
      @carrinhos = Carrinho.where(clientes_id: session[:cliente_id])
        
        @carrinhos.each do |c|
          @vendabolo = Vendabolo.new
          @vendabolo.bolos_id = c.bolos_id
          @vendabolo.clientes_id = session[:cliente_id]
          @vendabolo.vendas_id = @venda.id
          @vendabolo.save
          c.destroy
        end
        
      redirect_to venda_index_path(session[:cliente_id])
    else
      @valor_total = params[:valor_total].to_f
      if @valor_total > 0
        @venda = Venda.new
        @venda.clientes_id = session[:cliente_id]
        @venda.valor_total = @valor_total
        @venda.pgto_confirmado = false
        @venda.empacotamento_confirmado = false
        @venda.despache_confirmado = false
        @venda.entrega_confirmada = false
        
        @carrinhos = Carrinho.where(clientes_id: session[:cliente_id])
        
        @carrinhos.each do |c|
          @vendabolo = Vendabolo.new
          @vendabolo.bolos_id = c.bolos_id
          @vendabolo.clientes_id = session[:cliente_id]
          @vendabolo.vendas_id = @venda.id
          @vendabolo.save
          c.destroy
        end
      
        @venda.save
        redirect_to venda_index_path(session[:cliente_id])
      else
        redirect_to carrinho_index_path(session[:cliente_id])
      end
    end
  end
  
  def destroy
    @venda = Venda.find_by(id: params[:id])
    @vendabolos = Vendabolo.where(clientes_id: session[:cliente_id])
    
    @vendabolos.each do |v|
      v.destroy
    end
    @venda.destroy
    redirect_to venda_index_path(session[:cliente_id])
  end
  
  def pedidos
    
  end
end
