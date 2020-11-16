require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { User.new }
  let(:user1) { User.create(name: 'Trish', email: 'trish@email.com', password: 'abc123') }

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:book_groups) }
    it { should have_many(:books).through(:book_groups) }
  end
end
