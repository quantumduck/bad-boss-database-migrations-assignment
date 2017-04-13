class RemoveStreets < ActiveRecord::Migration[5.0]
  def change
    drop_table "street_names", force: :cascade do |t|
      t.string   "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
    remove_index :locations, :street_name_id
    remove_column :locations, :street_name_id, :integer
  end
end
