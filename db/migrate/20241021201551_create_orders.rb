class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :size
      t.integer :quantity
      t.references :cart, null: false, foreign_key: true
      t.references :pizza, null: false, foreign_key: true

      t.timestamps
    end
  end
end
