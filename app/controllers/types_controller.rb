class TypesController < ApplicationController

  def blusas
    skip_authorization
    @blusas = Product.all.select { |product| product.type.name == "Blusas" }
    @types = Type.all
  end

  def sapatos
    skip_authorization
    @sapatos = Product.all.select { |product| product.type.name == "Sapatos" }
    @types = Type.all
  end

  private

  # Only allow a list of trusted parameters through.
  def type_params
    params.require(:type).permit(:name)
  end
end
