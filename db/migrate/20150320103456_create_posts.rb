class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :symbol
      t.string :price

      t.timestamps
    end
  end
end
