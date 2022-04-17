class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.references :menu, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.float :unit_price
      t.integer :quantity

      t.timestamps
    end
  end
end
