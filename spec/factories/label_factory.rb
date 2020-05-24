FactoryBot.define do
  factory :label, class: IssuesTracker::Label do
    name { Faker::Name.unique.name }
    color { '#F0F0F0' }
  end
end