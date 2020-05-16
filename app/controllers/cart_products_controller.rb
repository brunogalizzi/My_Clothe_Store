class CartProductsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @cart = Cart.find_or_create_by!(user: current_user, status: false)
    @cart_product = CartProduct.create(product: @product, cart: @cart, quantity: '1')
    authorize @cart_product
    redirect_to root_path
  end

  def destroy
    @cart_product = CartProduct.find(params[:id])
    authorize @cart_product
    @cart_product.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
