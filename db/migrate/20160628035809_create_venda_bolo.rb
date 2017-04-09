class CreateVendaBolo < ActiveRecord::Migration
  def change
    create_table :venda_bolos do |t|
      t.integer :porcao
    end
  end
end
