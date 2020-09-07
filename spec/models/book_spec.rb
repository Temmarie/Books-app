require 'rails_helper'

RSpec.describe Book, type: :model do
  let(:user) { User.new }
  let(:user1) { User.create(name: 'Trish', email: 'trish@email.com', password: 'abc123') }

  describe 'associations' do
    it { should have_many(:book_groups) }
    it { should have_many(:groups) }
    it { should belong_to(:user) }
    it { should have_many(:reviews) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_length_of(:title) }
    it { should validate_presence_of(:author) }
    it { should validate_length_of(:author) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:image) }
    it { should validate_length_of(:description) }
  end
end
