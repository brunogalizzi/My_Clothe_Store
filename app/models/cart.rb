class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_products,dependent: :nullify
  has_many :products, through: :cart_products
end
