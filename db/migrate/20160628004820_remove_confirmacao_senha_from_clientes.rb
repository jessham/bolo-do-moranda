class RemoveConfirmacaoSenhaFromClientes < ActiveRecord::Migration
  def change
    remove_column :clientes, :confirmacao_senha, :string
    remove_column :clientes, :senha, :string
    add_column :clientes, :password_digest, :string
  end
end
