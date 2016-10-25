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
    ActionMailer::Base.mail(:from => @email,
        :to => 'dani.zimmermann@gmail.com',
        :subject => "A new contact form message from #{@name}",
        :body => @message).deliver_now
  end
end


