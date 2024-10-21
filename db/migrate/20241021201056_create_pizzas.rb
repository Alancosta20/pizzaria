class CreatePizzas < ActiveRecord::Migration[7.1]
  def change
    create_table :pizzas do |t|
      t.float :price
      t.references :flavor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
