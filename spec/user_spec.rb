require 'json'
require_relative '../basic/User'
describe '#valid?' do
  subject(:user) { User.new username }

  context 'with valid username' do
    let(:username) { 'marfa' }
    it 'validate user' do
      expect(user).to be_valid
    end
  end

  context 'with invalid token' do
    let(:username) { 'ab' }
    it 'validate user' do
      expect(user).not_to be_valid
    end
  end
end