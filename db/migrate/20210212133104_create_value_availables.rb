class CreateValueAvailables < ActiveRecord::Migration[6.0]
  def change
    create_table :value_availables do |t|
      t.bigint :option_available_id
      t.bigint :value_id

      t.timestamps
    end
    add_index :value_availables, %i[option_available_id value_id], unique: false
    add_foreign_key :value_availables, :option_availables, column: :option_available_id
    add_foreign_key :value_availables, :values, column: :value_id
  end
end
