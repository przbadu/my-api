class IssuesTracker::Project < ApplicationRecord
  # validations
  validates :name, presence: true, uniqueness: { case_sensitive: true }

  # associations
  belongs_to :user
  has_many :labels
end
