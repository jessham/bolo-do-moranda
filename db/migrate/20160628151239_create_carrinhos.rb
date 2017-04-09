class CreateCarrinhos < ActiveRecord::Migration
  def change
    create_table :carrinhos do |t|
      t.integer :porcao
      t.timestamps
    end
  end
end
