class CartsController < ApplicationController
  before_action :find_and_authorize_cart, only: [:pagamento, :resumo]
  def index
    @cart = policy_scope(Cart).order(created_at: :desc)
    @cart = Cart.find_or_create_by!(user: current_user, status: false)
    @cart_products = @cart.cart_products
    @total = 0
    @cart_products.each do |prod|
      @total += prod.product.price*prod.quantity
    end
    # @cart = Cart.find(params[:id])
  end
  def pagamento; end

  def resumo; end

  private

  def find_and_authorize_cart
    @cart = Cart.find_by(user: current_user, status: false)
    authorize @cart
  end
end
