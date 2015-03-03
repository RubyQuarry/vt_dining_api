class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :name
      t.time :opening
      t.time :closing

      t.timestamps null: false
    end
  end
end
