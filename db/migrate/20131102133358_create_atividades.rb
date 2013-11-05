class CreateAtividades < ActiveRecord::Migration
  def change
    create_table :atividades do |t|
      t.integer :tempo
      t.string :tipo
      t.date :data

      t.timestamps
    end
  end
end
