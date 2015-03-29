class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.string :year
      t.string :reg
      t.decimal :value
      t.integer :customer_id
      t.integer :Insurance_id
      t.integer :receipt_id

      t.timestamps
    end
  end
end
