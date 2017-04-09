class CreateVendabolos < ActiveRecord::Migration
  def change
    rename_table :vendabolo, :vendabolos
  end
end
