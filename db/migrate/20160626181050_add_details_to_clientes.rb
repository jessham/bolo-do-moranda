class AddDetailsToClientes < ActiveRecord::Migration
  def change
    add_column :clientes, :cpf, :integer, precision: 11, scale: 0, null:false
    add_column :clientes, :nome, :string, limit: 100, null:false
    add_column :clientes, :telefone, :integer, precision: 10, scale: 0, null:false
    add_column :clientes, :email, :string, limit: 100, null:false
    add_column :clientes, :username, :string, limit: 50, null:false
    add_column :clientes, :senha, :string, limit: 20, null:false
    add_column :clientes, :id_end, :integer
  end
end
