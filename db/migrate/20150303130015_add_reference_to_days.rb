class AddReferenceToDays < ActiveRecord::Migration
  def change
    add_reference :days, :dining_center, index: true
    add_foreign_key :days, :dining_centers
  end
end
