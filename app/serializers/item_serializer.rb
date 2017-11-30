class ItemSerializer < ActiveModel::Serializer
  attributes :id, :category_id, :name, :data_model

  def data_model
    object.model_data.present? ? JSON.parse(object.model_data) : nil
  end
end
