class IssuesTracker::Issue < ApplicationRecord
  # associations
  belongs_to :project, counter_cache: true
  has_one :creator
  has_many :assignees
  has_many :issue_labels
end
