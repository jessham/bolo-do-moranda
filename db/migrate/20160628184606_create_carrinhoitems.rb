class CreateCarrinhoitems < ActiveRecord::Migration
  def change
    create_table :carrinhoitems do |t|
      t.timestamps
    end
  end
end
