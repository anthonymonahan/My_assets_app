class AddOriginalValueToShares < ActiveRecord::Migration
  def change
    add_column :shares, :original_value, :decimal
  end
end
