class ChangeModelDataColumnType < ActiveRecord::Migration[5.1]
  def change
    change_column :items, :model_data, :longtext

  end
end
