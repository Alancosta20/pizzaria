class CreateCarts < ActiveRecord::Migration[7.1]
  def change
    create_table :carts do |t|
      t.float :fare

      t.timestamps
    end
  end
end
