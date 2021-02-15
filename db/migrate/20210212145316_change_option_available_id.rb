class ChangeOptionAvailableId < ActiveRecord::Migration[6.0]
  def change
    rename_column :value_availables, :option_available_id, :optionAvailable_id
  end
end
