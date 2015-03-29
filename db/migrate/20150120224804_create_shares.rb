class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.string :name_of_share
      t.string :serial_number
      t.decimal :original_value
      t.string :customer_i
      t.integer :insurance_id
      t.integer :receipt_id

      t.timestamps
    end
  end
end
