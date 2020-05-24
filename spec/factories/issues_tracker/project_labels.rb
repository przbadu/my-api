FactoryBot.define do
  factory :issues_tracker_project_label, class: 'IssuesTracker::ProjectLabel' do
    label_id { 1 }
    issue_id { 1 }
  end
end
