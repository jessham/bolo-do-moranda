class AddRefToCarrinhoItems < ActiveRecord::Migration
  def change
    add_reference :carrinhoitems, :carrinhos, index: true
    add_reference :carrinhoitems, :bolos, index: true
  end
end
