class RemoveRegions < ActiveRecord::Migration[5.0]
  def change
    drop_table "regions", force: :cascade do |t|
      t.string   "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
    remove_index :locations, :region_id
    remove_column :locations, :region_id, :integer
  end
end
