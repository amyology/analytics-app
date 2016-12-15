class ProductsController < ApplicationController
  
  def index
    # ahoy.track "Index visit"
    @visits = Visit.all
  end

  def show
    @product = Product.find(params[:id])
    ahoy.track @product.product_name
  end

  def create
    Product.create(
      retailer: params[:retailer],
      product_number: params[:product_number],
      product_name: params[:product_name],
      url: params[:url]
    )
  end

end
