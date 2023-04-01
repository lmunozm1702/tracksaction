require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'associations' do
    it 'belongs to a user' do
      @user = User.new(email: 'a@a', password: '123456')
      @group = Group.create(name: 'Doro', user_id: @user.id, icon: 'icon1')
      expect(@group.user_id).to eq(@user.id)
    end
  end
end
