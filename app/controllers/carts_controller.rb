class CartsController < ApplicationController
  def index
    @cart = policy_scope(Product).order(created_at: :desc)
    authorize @cart
    @cart = Cart.find_or_create_by!(user: current_user, status: true)
    @cart_products = @cart.cart_products
    @total = 0
    @cart_products.each do |prod|
      @total += prod.product.price*prod.quantity
    end
    # @cart = Cart.find(params[:id])
  end
  def pagamento
    @cart = policy_scope(Product).order(created_at: :desc)
    authorize @cart
  end
end
