class HomeController < ApplicationController
  layout 'site'

  def index
    @products = Product.all
  end
end