FactoryBot.define do
  factory :category do
    association :menu
    category_name { "Indonesian" }
    menu { 1 }
  end
end
