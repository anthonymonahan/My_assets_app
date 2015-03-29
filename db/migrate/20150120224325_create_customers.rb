class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :CustomerName
      t.string :email
      t.string :password
      t.string :address

      t.timestamps
    end
  end
end
