class AddRefToCarrinhos < ActiveRecord::Migration
  def change
    add_reference :carrinhos, :bolos, index: true
    add_reference :carrinhos, :clientes, index: true
  end
end
