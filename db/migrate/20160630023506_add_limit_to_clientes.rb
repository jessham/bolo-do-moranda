class AddLimitToClientes < ActiveRecord::Migration
  def change
    change_column :clientes, :telefone, :integer, limit: 8
  end
end
