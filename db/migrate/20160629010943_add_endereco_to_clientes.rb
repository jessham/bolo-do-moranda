class AddEnderecoToClientes < ActiveRecord::Migration
  def change
    add_column :clientes, :logradouro, :string, null: false
    add_column :clientes, :numero, :integer, null: false
    add_column :clientes, :complemento, :string
    add_column :clientes, :bairro, :string, null: false
    add_column :clientes, :cidade, :string, null: false
    add_column :clientes, :estado, :string, null: false
    add_column :clientes, :cep, :integer, null: false
  end
end
