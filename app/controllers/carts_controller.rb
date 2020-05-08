class CartsController < ApplicationController
  def index
    @cart = policy_scope(Product).order(created_at: :desc)
    authorize @cart
    # @cart = Cart.find(params[:id])
  end
  def pagamento
    @cart = policy_scope(Product).order(created_at: :desc)
    authorize @cart
  end
end
