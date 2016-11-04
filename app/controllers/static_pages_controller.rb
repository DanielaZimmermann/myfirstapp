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

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end
end


