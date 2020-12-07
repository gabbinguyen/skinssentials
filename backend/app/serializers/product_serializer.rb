class ProductSerializer < ActiveModel::Serializer
  has_many :user_products
  has_many :users, through: :user_products
  attributes :id, :brand, :name, :skin_type, :step, :img_url
end
