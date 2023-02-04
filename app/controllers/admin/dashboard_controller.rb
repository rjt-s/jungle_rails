class ApplicationController < ActionController::Base
  http_basic_authenticate_with :name => 'Jungle', :password => 'book'
end

class Admin::DashboardController < ApplicationController
  def show
    @category_count = Category.count()
    @product_count = Product.count()
  end
end
