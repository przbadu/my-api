class IssuesTracker::Issue < ApplicationRecord
  # associations
  belongs_to :project, counter_cache: true
  belongs_to :creator, class_name: 'User', foreign_key: :creator_id
  has_many :assignees
  accepts_nested_attributes_for :assignees
  has_many :issue_labels
  accepts_nested_attributes_for :issue_labels
end
