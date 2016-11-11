FactoryGirl.define do
	sequence(:name) { |n| "bike number #{n}" }
  factory :product do
    name "race bike"
    description "blabla bla"
    image_url "test.de/test"
    price 100
    colour "white"
  end

end