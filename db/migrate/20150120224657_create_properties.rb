class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address
      t.decimal :original_value
      t.string :customer_id
      t.integer :insurance_id
      t.integer :receipt_id

      t.timestamps
    end
  end
end
