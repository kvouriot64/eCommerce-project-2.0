class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.integer :total_cost
      t.references :user, null: false, foreign_key: true
      t.references :order_status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
