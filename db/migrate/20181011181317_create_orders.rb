class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :toy_id
      t.integer :quantity
      t.decimal :unit_price

      t.timestamps
    end
    add_index :orders, :user_id
    add_index :orders, :toy_id
  end
end
