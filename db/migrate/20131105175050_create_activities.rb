class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.decimal :time
      t.text :type
      t.date :date

      t.timestamps
    end
  end
end
