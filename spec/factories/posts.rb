FactoryGirl.define do
  factory :post do
    title Faker::Lorem.sentence
    body Faker::Lorem.paragraphs.join('\n')
    association :author_id, factory: :user
  end
end
