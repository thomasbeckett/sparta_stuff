class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @products = Product.all
    # @products = current_user.products
  end

  def show
    @product = Product.find params[:id]
  end

  def new
    @product = Product.new
  end

  def edit
    unless @product.user.id == current_user.id
      redirect_to products_path
    end
    @product = Product.find params[:id]
  end

  def create
    @product = Product.new product_params
    respond_to do |format|
      if @product.save
        format.html{redirect_to @product, notice: "'#{@product.name}' was created"}
      else
        format.html{render :new}
      end
    end
  end

  def update
    unless @product.user.id == current_user.id
      redirect_to products_path
    end
    @product = Product.find params[:id]
    respond_to do |format|
      if @product.update product_params
        format.html{redirect_to @product, notice: "'#{@product.name}' was updated"}
      else
        format.html{render :edit}
      end
    end
  end

  def destroy
    unless @product.user.id == current_user.id
      redirect_to products_path
    end
    @product = Product.find params[:id]
    @product.destroy
    redirect_to products_path
  end

  def product_params
    product_params = params.require(:product).permit(:name,:desc,:price,:stock)
  end
end
