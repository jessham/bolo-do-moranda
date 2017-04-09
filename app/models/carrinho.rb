class Carrinho < ActiveRecord::Base
  has_many :carrinhoitems
  end
