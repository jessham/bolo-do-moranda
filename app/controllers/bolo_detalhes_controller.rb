class BoloDetalhesController < ApplicationController
  
  layout 'application'
  
  def index
    @bolo = Bolo.find_by(id: params[:id])
  end
  
  def new
    
  end
  
  def create
    
  end
  
  def destroy
    
  end
end
