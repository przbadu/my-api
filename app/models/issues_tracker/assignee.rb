class IssuesTracker::Assignee < ApplicationRecord
  # associations
  belongs_to :issue
  belongs_to :user
end
