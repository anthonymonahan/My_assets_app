class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.string :institution
      t.string :account_number
      t.decimal :amount
      t.integer :customer_id
      t.integer :insurance_id
      t.integer :receipt_id

      t.timestamps
    end
  end
end
