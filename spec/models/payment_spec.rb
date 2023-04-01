RSpec.describe Payment, type: :model do
  describe 'associations' do
    it 'belongs to a user' do
      @user = User.new(email: 'a@a', password: '123456')
      @payment = Payment.create(name: 'Doro', author_id: @user.id, amount: 200)
      expect(@payment.author_id).to eq(@user.id)
    end
  end
end
