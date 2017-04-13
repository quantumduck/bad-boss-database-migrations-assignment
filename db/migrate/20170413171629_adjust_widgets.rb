class AdjustWidgets < ActiveRecord::Migration[5.0]
  def change
    rename_table :party_guests, :widgets
    rename_table :dietary_restrictions, :widget_drs
    rename_table :illnesses, :widget_ils
    rename_table :voting_preferences, :widget_vps
    rename_table :medications, :widget_mds
    rename_table :vulnerabilities, :widget_vls
  end
end
