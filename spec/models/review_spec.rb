require 'rails_helper'

RSpec.describe Review, type: :model do
  let(:user) { User.new }
  let(:user1) { User.create(name: 'Trish',email: 'trish@email.com', password: 'abc123') }

  describe 'associations' do
    it { should belong_to(:book) }
    it { should belong_to(:user) }
  end
end
