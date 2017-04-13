class ChangeLocationColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :locations, :street_number, :integer
    remove_column :locations, :unit_number, :integer
    remove_column :locations, :gps_east, :decimal
    remove_column :locations, :gps_north, :decimal
    remove_column :locations, :time_zone, :decimal
    remove_column :locations, :telephone, :integer
    remove_column :locations, :fax, :integer
    remove_column :locations, :modifiers, :string
    add_column :locations, :weather, :string
  end
end
