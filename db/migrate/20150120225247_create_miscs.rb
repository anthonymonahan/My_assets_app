class CreateMiscs < ActiveRecord::Migration
  def change
    create_table :miscs do |t|
      t.string :name
      t.string :serial_no
      t.decimal :value
      t.string :image
      t.integer :customer_id
      t.integer :insurance_id
      t.integer :receipt_id

      t.timestamps
    end
  end
end
