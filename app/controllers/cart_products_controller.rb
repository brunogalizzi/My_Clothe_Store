class CartProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]
  def create
    @product = Product.find(params[:product_id])
    @cart = current_user.nil? ? Cart.create(status: false) : Cart.find_or_create_by!(user: current_user, status: false)
    @cart_product = CartProduct.create(product: @product, cart: @cart, quantity: '1')
    authorize @cart_product
    redirect_to carts_path
  end
end
