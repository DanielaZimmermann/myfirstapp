class StaticPagesController < ApplicationController
	require 'net/http'
	require 'json'

  def index
  end

  def landing_page
    @featured_product = Product.first
    @products = Product.limit(3)
  end

  def skyscanner
		url = 'http://partners.api.skyscanner.net/apiservices/browseroutes/v1.0/GB/GBP/en-GB/LON/anywhere/anytime/anytime?apiKey=prtl6749387986743898559646983194'
		uri = URI(url)
		response = Net::HTTP.get(uri)
		result = JSON.parse(response)
		#puts "first response.inspect"
		#puts response.inspect
		#puts "and now result.inspect"
		puts result.inspect
		puts "and now access hash"
		currencies = JSON.parse(response)["Currencies"]
		puts currencies.inspect
		puts "#{currencies[0]["Code"]}"
		quotes = JSON.parse(response)["Quotes"]
		puts "and now quotes"
		puts quotes
		puts "and now quotes.inspect"
		puts quotes.inspect
		sorted_quotes = quotes.sort_by { |quotes| quotes[:MinPrice] }
		puts sorted_quotes
end

end


