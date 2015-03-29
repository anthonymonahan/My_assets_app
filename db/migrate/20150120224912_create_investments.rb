class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.string :type_of_investment
      t.decimal :value
      t.integer :customer_id
      t.integer :insurance_id
      t.integer :receipt_id

      t.timestamps
    end
  end
end
