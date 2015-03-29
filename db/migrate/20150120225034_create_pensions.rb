class CreatePensions < ActiveRecord::Migration
  def change
    create_table :pensions do |t|
      t.string :company
      t.string :address
      t.date :maturity_date
      t.decimal :original_value
      t.decimal :expected_value_at_maturity
      t.integer :customer_id
      t.integer :insurance_id
      t.integer :receipt_id

      t.timestamps
    end
  end
end
