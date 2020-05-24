FactoryBot.define do
  factory :project, class: IssuesTracker::Project do
    name { Faker::Name.unique.name }
  end
end