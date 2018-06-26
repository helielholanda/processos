class CreateProcessos < ActiveRecord::Migration[5.2]
  def change
    create_table :processos do |t|
      t.string :numero
      t.date :data
      t.string :solicitante
      t.timestamp :data_receb

      t.timestamps
    end
  end
end
