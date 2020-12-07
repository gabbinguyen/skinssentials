class UserProductSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :product
  attributes :id, :user_id, :product_id,  :user, :product
end
