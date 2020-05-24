FactoryBot.define do
  factory :issues_tracker_issue, class: 'IssuesTracker::Issue' do
    name { "MyString" }
    description { "MyText" }
    creator_id { 1 }
    project_id { 1 }
  end
end
