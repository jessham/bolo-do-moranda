class RenameVendaBolo < ActiveRecord::Migration
  def change
    add_reference :venda_bolos, :clientes, index: true
    rename_table :venda_bolos, :vendabolo
  end
end
