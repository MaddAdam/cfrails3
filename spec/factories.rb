FactoryGirl.define do

  sequence(:email) { |n| "email#{n}@test.com"}
  sequence(:id) { |n| "#{n}"}

  factory :user, class: User do
    email
    password "P@ssw0rd"
    id
  end

  factory :admin, class: User do
    email
    id
    password "P@ssw0rd"
    admin true
  end

  factory :product, class: Product do
    sequence(:name) {|n| "test_bike#{n}"}
    description "description"
    image_url "#"
    color "color"
  end


end
