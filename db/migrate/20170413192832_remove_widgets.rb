class RemoveWidgets < ActiveRecord::Migration[5.0]
  def change
    drop_table :widget_drs do |t|
      t.string  :name

      t.timestamps
    end
    drop_table :widget_vls do |t|
      t.string  :name

      t.timestamps
    end
    drop_table :widget_ils do |t|
      t.string  :name

      t.timestamps
    end
    drop_table :widget_mds do |t|
      t.string  :name

      t.timestamps
    end
    drop_table :widget_vps do |t|
      t.string  :name

      t.timestamps
    end
    drop_table :widgets do |t|
      t.string      :first_name
      t.string      :last_name
      t.references  :dietary_restriction
      t.decimal     :salary
      t.integer     :number_of_kids
      t.references  :vulnerability
      t.references  :illness
      t.references  :medication
      t.references  :voting_preference

      t.timestamps
    end
  end
end
