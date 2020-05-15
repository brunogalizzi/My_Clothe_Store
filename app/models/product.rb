class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :stock, numericality: { greater_than_or_equal_to: 0 }
  belongs_to :type
  belongs_to :user
  has_many :cart_products, dependent: :destroy
  has_many :carts, through: :cart_products
  has_many_attached :photos
end

# include PgSearch::Model
#   pg_search_scope :global_search,
#     against: [ :name, :type, :size, :color ],
#     using: {
#       tsearch: { prefix: true }
#     }
