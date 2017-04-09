class AddRefToEntrega < ActiveRecord::Migration
  def change
    add_reference :entrega, :vendas, index: true
    add_reference :entrega, :enderecos, index: true
  end
end
