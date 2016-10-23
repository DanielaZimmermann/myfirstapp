class StaticPagesController < ApplicationController
	require 'net/http'
	require 'json'

  def index
  	redirect_to static_pages_landing_page_path
  end

  def landing_page
    @featured_product = Product.first
    @products = Product.limit(5)
  end

  def contact
  	redirect_to :back
  end
end


