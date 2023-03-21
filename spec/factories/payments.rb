FactoryBot.define do
  factory :payment do
    name { "MyString" }
    amount { 1 }
    user { nil }
  end
end
