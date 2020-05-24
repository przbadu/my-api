require 'rails_helper'

RSpec.describe IssuesTracker::Project, type: :model do
  subject { FactoryBot.build(:user) }

  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:labels) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).case_insensitive }
  end
end
