class CreateEndereco < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :logradouro, null: false
      t.integer :numero, null: false
      t.string :complemento
      t.string :bairro, null: false
      t.string :cidade, null: false
      t.string :estado, null: false
      t.integer :cep, null: false, precision: 8
    end
  end
end
