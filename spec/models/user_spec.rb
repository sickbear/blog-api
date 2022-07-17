require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'there is no name in the model' do
      user = User.new()
      expect(user.valid?).to eq(false)
    end

    it 'the model has a name' do
      user = User.new(name: 'Он вам не Димон')
      expect(user.valid?).to eq(true)
    end
  end
end