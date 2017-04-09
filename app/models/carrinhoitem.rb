class Carrinhoitem < ActiveRecord::Base
  belongs_to :carrinhos
  belongs_to :bolos
end
