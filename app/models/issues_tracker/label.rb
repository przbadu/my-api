class IssuesTracker::Label < ApplicationRecord
  # validations
  validates :name, presence: true, uniqueness: { case_sensitive: true }
  validates :color, presence: true

  # associations
  belongs_to :project, counter_cache: true
  has_many :issue_labels
  has_many :issues, through: :issue_labels
end
