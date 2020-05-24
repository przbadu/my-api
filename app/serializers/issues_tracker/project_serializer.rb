class IssuesTracker::ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :issues_count, :labels_count, :created_at, :updated_at
  belongs_to :user
end
