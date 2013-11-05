class CreateActivityTypes < ActiveRecord::Migration
  def change
    create_table :activity_types do |t|
      t.integer :activity_id
      t.integer :type
      t.text :description

      t.timestamps
    end
  end
end
