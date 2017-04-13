class QuantityToDecimal < ActiveRecord::Migration[5.0]
  def change
    remove_column :parts, :quantity, :integer
    add_column :parts, :quantity, :decimal
  end
end
