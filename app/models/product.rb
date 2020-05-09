class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :stock, numericality: { greater_than_or_equal_to: 0 }
  # validates :photo, presence: true
  belongs_to :type
  belongs_to :user
  has_many :cart_products, dependent: :destroy
  has_many :carts, through: :cart_products
  # has_many :
end
