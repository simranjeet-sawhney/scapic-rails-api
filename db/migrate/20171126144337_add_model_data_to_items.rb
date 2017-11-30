class AddModelDataToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :model_data, :text, null: true
  end
end
