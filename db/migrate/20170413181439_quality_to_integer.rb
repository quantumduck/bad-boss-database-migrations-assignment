class QualityToInteger < ActiveRecord::Migration[5.0]
  # Undo previous remove/add.
  def change
    remove_column :parts, :quantity, :decimal
    add_column :parts, :quantity, :integer
  end
end
