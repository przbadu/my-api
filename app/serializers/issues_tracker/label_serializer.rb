class IssuesTracker::LabelSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :color, :created_at, :updated_at
end
