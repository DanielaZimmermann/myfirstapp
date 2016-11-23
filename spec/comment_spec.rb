require 'rails_helper'

describe Comment do

	it "is valid" do
    expect(FactoryGirl.build(:comment)).to be_valid
  end

end