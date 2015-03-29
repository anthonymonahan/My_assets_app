class CreateMoneyOnDeposits < ActiveRecord::Migration
  def change
    create_table :money_on_deposits do |t|
      t.string :institution
      t.decimal :amount
      t.string :account_number
      t.integer :customer_id
      t.integer :insurance_id
      t.integer :receipt_id

      t.timestamps
    end
  end
end
