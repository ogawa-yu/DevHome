class CreateDrinks < ActiveRecord::Migration[5.0]
  def change
    create_table :drinks do |t|
      t.string :drink_name
      t.integer :drink_type
      t.integer :stock
      t.integer :discount

      t.timestamps
    end
  end
end
