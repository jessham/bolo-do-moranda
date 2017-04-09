class RemoveCpfFromClientes < ActiveRecord::Migration
  def change
    remove_column :clientes, :cpf, :integer
  end
end
