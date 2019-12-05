FactoryBot.define do
  factory :duty do
    name { "MyString" }
    description { "MyText" }
    source { nil }

    factory :duty_with_source do
      source { association(:source) }
    end
  end
end
