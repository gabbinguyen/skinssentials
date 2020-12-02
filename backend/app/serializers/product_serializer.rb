class ProductSerializer < ActiveModel::Serializer
  attributes :id, :brand, :name, :skin_type, :step, :img_url
end
