class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
