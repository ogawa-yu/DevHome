class CreateCurrencies < ActiveRecord::Migration[5.0]
  def change
    create_table :currencies do |t|
      t.integer :value
      t.integer :count

      t.timestamps
    end
  end
end
