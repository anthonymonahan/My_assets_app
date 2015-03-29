class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.text :details
      t.string :image

      t.timestamps
    end
  end
end
