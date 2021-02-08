class CreateLineOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :line_orders do |t|
      t.bigint :bike_id
      t.bigint :option_id
      t.bigint :value_id
      t.integer :gty

      t.timestamps
    end
    add_index :line_orders, %i[bike_id option_id value_id], unique: true
    add_foreign_key :line_orders, :bikes, column: :bike_id
    add_foreign_key :line_orders, :options, column: :option_id
    add_foreign_key :line_orders, :values, column: :value_id
  end
end
