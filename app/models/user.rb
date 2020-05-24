class User < ApplicationRecord
  has_secure_password
  # mount_uploader :avatar, AvatarUploader

  # validations
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :password,
            length: { minimum: 8 },
            if: -> { new_record? || !password.nil? }
  
  # associations
  has_many :projects, class_name: 'IssuesTracker::Project'
  has_many :assignees, class_name: 'IssuesTracker::Assignee'
  has_many :issues, through: :assignees, class_name: 'IssuesTracker::Issue'
  has_many :created_issues, class_name: 'IssuesTracker::Issue', foreign_key: 'creator_id'
end
