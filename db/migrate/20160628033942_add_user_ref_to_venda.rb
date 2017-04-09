class AddUserRefToVenda < ActiveRecord::Migration
  def change
    add_reference :vendas, :clientes, index: true
  end
end
