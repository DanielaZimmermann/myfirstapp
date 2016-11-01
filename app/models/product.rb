class Product < ApplicationRecord
	has_many :orders
	has_many :comments

	validates :name, presence: true
	validates :description, presence: true
	validates :image_url, presence: true
	validates :colour, presence: true
	validates :price, presence: true

	def highest_rating_comment
	  comments.rating_desc.first
	end

	def lowest_rating_comment
	  comments.rating_asc.first
	end

	def three_similar_products
		arr_products = Array.new(Product.all)
		# get index of current product
		ind = arr_products.find_index(self)
		# get total count
		length = arr_products.count
		new_arr = Array.new
		# circle in array, push current and two following products
		new_arr.push(arr_products.slice(ind % length))
		new_arr.push(arr_products.slice(ind+1 % length))
		new_arr.push(arr_products.slice(ind+2 % length))

		return new_arr

	end

	def average_rating
	  comments.average(:rating).to_f
	end

end
