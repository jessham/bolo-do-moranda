class AddRefToPgtoCartao < ActiveRecord::Migration
  def change
    add_reference :pgto_cartao, :vendas, index: true
    add_reference :pgto_boleto, :vendas, index: true
  end
end
