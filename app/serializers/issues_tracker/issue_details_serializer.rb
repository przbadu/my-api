class IssuesTracker::IssueDetailsSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :closed, :created_at, :updated_at

  has_one :creator
  has_one :project
  has_many :assignees
  has_one :issue_labels
end
