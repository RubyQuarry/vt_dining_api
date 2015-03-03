class AddSeatsToDiningCenters < ActiveRecord::Migration
  def change
    add_column :dining_centers, :seats, :integer
  end
end
