class User < ApplicationRecord
    has_many :user_products
    has_many :products, through: :user_products
end
