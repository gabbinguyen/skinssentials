class UserSerializer < ActiveModel::Serializer
  has_many :user_products
  has_many :products, through: :user_products
  attributes :id, :name, :username, :skin_type
end
