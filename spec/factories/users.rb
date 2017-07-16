FactoryGirl.define do
  factory :user, class: 'User' do |f|
    name Faker::Name.name
    f.sequence(:email) { |n| "test#{n}@example.com" }
    password "123456"
    password_confirmation "123456"
  end
end
