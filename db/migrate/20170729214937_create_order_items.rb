class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.decimal :unit_price
      t.decimal :total_price
      t.references :item, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
