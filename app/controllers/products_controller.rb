class ProductsController < ApplicationController
  layout 'site'
  before_action :set_category

  def index
    @products = @category.products
  end

  private

  def set_category
    @category = Category.find params[:category_id]
  end
end
