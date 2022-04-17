FactoryBot.define do
  factory :order do
    date { "2022-04-17" }
    total { 1.5 }
    status { "NEW" }
    customer { nil }
  end
end
