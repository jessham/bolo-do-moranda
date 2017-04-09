class AddRefToVendaBolos < ActiveRecord::Migration
  def change
    add_reference :venda_bolos, :bolos, index: true
    add_reference :venda_bolos, :vendas, index: true
  end
end
