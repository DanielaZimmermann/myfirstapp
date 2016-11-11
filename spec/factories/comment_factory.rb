FactoryGirl.define do
  factory :comment do
  	rating 1
  	association :user, strategy: :build
  	body "bla bla bla bike!"
  end

end