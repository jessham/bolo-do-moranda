class AddUserRefToEndereco < ActiveRecord::Migration
  def change
    add_reference :enderecos, :clientes, index: true
  end
end
