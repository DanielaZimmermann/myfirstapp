require 'rails_helper'

describe Order do

	before do
	  @product = FactoryGirl.build(:product)
	  @user = FactoryGirl.build(:user)
	end

	it "is valid" do
    expect(Order.new(product: @product, user: @user)).to be_valid
  end

end