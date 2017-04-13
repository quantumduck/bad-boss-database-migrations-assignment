class RestoreLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :countries do |t|
      t.string   :name

      t.timestamps
    end
    create_table :regions do |t|
      t.string   :name

      t.timestamps
    end
    create_table :street_names do |t|
      t.string   :name

      t.timestamps
    end
    add_reference :locations, :country
    add_reference :locations, :region
    add_reference :locations, :street_name
    add_column :locations, :street_number, :integer
    add_column :locations, :unit_number, :integer
    add_column :locations, :gps_east, :decimal
    add_column :locations, :gps_north, :decimal
    add_column :locations, :time_zone, :decimal
    add_column :locations, :telephone, :integer
    add_column :locations, :fax, :integer
    add_column :locations, :modifiers, :string
    remove_column :locations, :weather, :string
  end
end
