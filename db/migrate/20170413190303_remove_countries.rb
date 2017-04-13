class RemoveCountries < ActiveRecord::Migration[5.0]
  def change
    drop_table "countries", force: :cascade do |t|
      t.string   "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
    remove_index :locations, :country_id
    remove_column :locations, :country_id, :integer
  end
end
