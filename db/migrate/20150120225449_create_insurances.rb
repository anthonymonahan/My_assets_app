class CreateInsurances < ActiveRecord::Migration
  def change
    create_table :insurances do |t|
      t.string :company
      t.string :policy_number
      t.string :website
      t.string :phone
      t.date :renewal_date

      t.timestamps
    end
  end
end
