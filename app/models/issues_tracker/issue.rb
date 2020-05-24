class IssuesTracker::Issue < ApplicationRecord
  # associations
  has_many :assignees
  has_many :issue_labels
end
