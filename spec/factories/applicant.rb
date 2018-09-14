FactoryBot.define do
  factory :applicant do
    sequence(:email) { |n| "unemployed#{n}@help.me" }
    password '1unemployed2'
  end
end