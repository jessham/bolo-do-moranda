class CreateEntrega < ActiveRecord::Migration
  def change
    create_table :entrega do |t|
      t.date :data_agendada
      t.integer :periodo_agendado
    end
  end
end
