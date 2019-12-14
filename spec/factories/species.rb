FactoryBot.define do
  factory :species do
    name { 'Test' }
    description { 'Testing' }

    silhouette { association(:silhouette) }
  end
end
