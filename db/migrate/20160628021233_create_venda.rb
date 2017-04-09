class CreateVenda < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.date :data_confirmacao
      t.decimal :valor_total, null: false
      t.boolean :pgto_confirmado, null: false
      t.boolean :empacotamento_confirmado, null: false
      t.boolean :despache_confirmado, null: false
      t.boolean :entrega_confirmada, null: false
    end
  end
end
