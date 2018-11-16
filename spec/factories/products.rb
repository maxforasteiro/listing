FactoryBot.define do
  factory :product do
    price_in_cents { 10000 }
    title { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
  end
end
