FactoryBot.define do
  factory :issues_tracker_issue_label, class: 'IssuesTracker::IssueLabel' do
    label_id { 1 }
    issue_id { 1 }
  end
end
