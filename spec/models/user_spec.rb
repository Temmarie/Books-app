require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new }
  let(:user1) { User.create(email: 'trish@email.com', password: 'abc123') }

  describe 'associations' do
    it { should have_many(:books) }
    it { should have_many(:reviews) }
    it { should have_many(:groups) }
  end

  describe 'validations' do
    it { should validate_uniqueness_of(:email).case_insensitive }
  end
end
