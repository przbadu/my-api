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
  has_many :projects
end
