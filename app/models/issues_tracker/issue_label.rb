class IssuesTracker::IssueLabel < ApplicationRecord
  # associations
  belongs_to :issue
  belongs_to :label
end
