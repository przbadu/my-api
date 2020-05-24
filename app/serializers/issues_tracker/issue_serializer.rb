class IssuesTracker::IssueSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :closed, :created_at, :updated_at
end
