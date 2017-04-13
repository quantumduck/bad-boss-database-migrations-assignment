class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name

      t.timestamps
    end
    create_table :regions do |t| # for state/province
      t.string :name

      t.timestamps
    end
    create_table :countries do |t|
      t.string :name

      t.timestamps
    end
    create_table :street_names do |t|
      t.string :name

      t.timestamps
    end
    create_table :locations do |t|
      t.string      :name
      t.references  :country
      t.references  :region
      t.references  :city
      t.references  :street_name
      t.integer     :street_number
      t.integer     :unit_number
      t.decimal     :gps_east
      t.decimal     :gps_north
      t.decimal     :time_zone
      t.integer     :telephone
      t.integer     :fax
      t.string      :modifiers

      t.timestamps
    end
  end
end
