require 'open-uri'
require 'nokogiri'
require 'google_search_results'

class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_types, only: [:index, :show, :new]
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @products = policy_scope(Product).order(created_at: :desc)
    # client = GoogleSearchResults.new(q: "coffee", serp_api_key: "66eae7246e7f16569d1b339edfaf198de0676f9711d17ef0840409b88c319a27", tbm: 'isch')
    # url = client.get_hash[:images_results][0][:original]
  end
  def show
    authorize @product
  # tabela que chama type coluna size
  end
  # GET /products/new
  def new
    @product = Product.new
    authorize @product
  end
  # GET /products/1/edit
  def edit
    authorize @product
  end
  def destroy
    authorize @product
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end
  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.user = current_user
    authorize @product
    if @product.save
      redirect_to product_path(@product), notice: 'product was successfully created.'
    else
      raise
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end
  # Only allow a list of trusted parameters through.
  def product_params
    params.require(:product).permit(:name, :type_id, :color, :size, :price, :stock, photos: [])
  end

  def set_types
    @types = Type.all
  end
end
