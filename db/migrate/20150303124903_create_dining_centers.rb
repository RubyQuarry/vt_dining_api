class CreateDiningCenters < ActiveRecord::Migration
  def change
    create_table :dining_centers do |t|
      t.string :name
      t.text :location

      t.timestamps null: false
    end
  end
end
