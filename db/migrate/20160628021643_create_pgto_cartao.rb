class CreatePgtoCartao < ActiveRecord::Migration
  def change
    create_table :pgto_cartao do |t|
      t.integer :numero_cartao, null: false
      t.string :nome_titular, null: false
      t.integer :cod_seguranca, null: false
      t.integer :val_mes_validade, null: false
      t.integer :val_ano_validade, null: false
      t.integer :par_qtd_parcela, null: false
      t.integer :par_valor_parcela, null: false
    end
  end
end
