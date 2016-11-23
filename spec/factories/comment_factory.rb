FactoryGirl.define do
  factory :comment do
  	rating 1
  	association :user, strategy: :build
  	association :product, strategy: :build
  	body "bla bla bla bike!"
  end

end