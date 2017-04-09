class BolosController < ApplicationController
  
  layout 'application'
  
  def index
    @bolos = Bolo.all
  end
  
  def detalhes
    @bolo = Bolo.find_by(id: params[:id])
  end
  
  def edit
    
  end
  
  def new
    @bolo = Bolo.new
  end
  
  def create
    @bolo = Bolo.new(bolo_params)
    
    if @bolo.save
      redirect_to bolos_path
    else
      redirect_to new_bolo_path
    end
  end
  
  def destroy
    
  end
  
  private

    def bolo_params
      params.require(:bolo).permit(:nome, :sabor, :descricao, :ingredientes, :preco)
    end
end
