class ProductsController < ApplicationController
  
  before_action :admin_user,     only: [:new, :create, :destroy]
  before_action :logged_in_user, only: [:new]
  
  def index
    @products = Product.all
    if params[:search]
    @products = Product.search(params[:search]).order("created_at ASC")
    else
    @products = Product.all.order('created_at ASC')
    end
    @order_item = current_order.order_items.new
  end
 
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to products_path, notice: "Product successfully added to store." and return
    end
    render 'new'
  end

private
  def product_params
    params.require(:product).permit(:photo, :name, :price, :active, :search)
  end
  
end