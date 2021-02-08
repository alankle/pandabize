class CreateValueAvailables < ActiveRecord::Migration[6.0]
  def change
    create_table :value_availables do |t|
      t.bigint :optionAvailable_id
      t.bigint :value_id

      t.timestamps
    end
    add_index :value_availables, %i[optionAvailable_id value_id], unique: true
    add_foreign_key :value_availables, :option_availables, column: :optionAvailable_id
    add_foreign_key :value_availables, :values, column: :value_id
  end
end
