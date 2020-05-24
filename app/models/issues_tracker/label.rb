class IssuesTracker::Label < ApplicationRecord
  # validations
  validates :name, presence: true, uniqueness: { case_sensitive: true }
  validates :color, presence: true

  # associations
  belongs_to :project
end
