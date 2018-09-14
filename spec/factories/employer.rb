FactoryBot.define do
  factory :employer do
    sequence(:email) { |n| "strictly_biz#{n}@enterprise.biz" }
    password '1businessfirst2'
  end
end