class CreatePgtoBoleto < ActiveRecord::Migration
  def change
    create_table :pgto_boleto do |t|
      t.date :data_vencimento, null: false
      t.integer :numero_boleto, null: false
    end
  end
end
