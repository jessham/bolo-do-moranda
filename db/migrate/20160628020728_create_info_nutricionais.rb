class CreateInfoNutricionais < ActiveRecord::Migration
  def change
    create_table :info_nutricionais do |t|
      t.integer :valor_energetico
      t.integer :carboidratos
      t.integer :proteinas
      t.integer :gorduras_totais
      t.integer :gorduras_saturadas
      t.integer :gorduras_trans
      t.integer :fibra_alimentar
      t.integer :sodio
    end
  end
end
