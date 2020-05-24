FactoryBot.define do
  factory :issues_tracker_assignee, class: 'IssuesTracker::Assignee' do
    user_id { 1 }
    issue_id { 1 }
  end
end
