class Cart < ApplicationRecord
  validates :status, inclusion: { in: %w(open closed)}
  belongs_to :user
  has_many :products, through: :cart_products
end
