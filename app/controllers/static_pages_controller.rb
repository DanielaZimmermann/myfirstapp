class StaticPagesController < ApplicationController
	require 'net/http'
	require 'json'

  def index
  end

  def landing_page
    @featured_product = Product.first
    @products = Product.limit(5)
  end

  def contact
  end
end


