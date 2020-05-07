class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :type
  belongs_to :user
  has_many :carts, through: :cart_products
end
