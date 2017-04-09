class RemoveUsernameFromClientes < ActiveRecord::Migration
  def change
    remove_column :clientes, :username, :string
  end
end
