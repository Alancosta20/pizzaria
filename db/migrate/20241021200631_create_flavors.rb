class CreateFlavors < ActiveRecord::Migration[7.1]
  def change
    create_table :flavors do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
