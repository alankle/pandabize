class CreateOptionAvailables < ActiveRecord::Migration[6.0]
  def change
    create_table :option_availables do |t|
      t.bigint :bike_id
      t.bigint :option_id

      t.timestamps
    end
    add_index :option_availables, %i[bike_id option_id], unique: true
    add_foreign_key :option_availables, :bikes, column: :bike_id
    add_foreign_key :option_availables, :options, column: :option_id
  end
end
