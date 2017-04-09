class AddConfirmacaoSenhaToClientes < ActiveRecord::Migration
  def change
    add_column :clientes, :confirmacao_senha, :string, limit: 20, null: false
    add_index :clientes, :username, unique: true
  end
end
