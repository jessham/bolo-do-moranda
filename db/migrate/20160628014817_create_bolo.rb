class CreateBolo < ActiveRecord::Migration
  def change
    create_table :bolos do |t|
      t.string :nome
      t.string :sabor
      t.string :mensagem
      t.string :descricao
      t.string :ingredientes
      t.decimal :preco
    end
  end
end
