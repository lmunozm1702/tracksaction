RSpec.describe GroupedPayment, type: :model do
  describe 'associations' do
    it 'belongs to a group' do
      @user = User.new(email: 'a@a', password: '123456')
      @payment = Payment.create(name: 'Doro', author_id: @user.id, amount: 200)
      @group = Group.create(name: 'Doro', user_id: @user.id, icon: 'icon1')
      @grouped_payments = GroupedPayment.create(group_id: @group.id, payment_id: @payment.id)
      expect(@grouped_payments.group_id).to eq(@group.id)
    end

    it 'belongs to a payment' do
      @user = User.new(email: 'a@a', password: '123456')
      @payment = Payment.create(name: 'Doro', author_id: @user.id, amount: 200)
      @group = Group.create(name: 'Doro', user_id: @user.id, icon: 'icon1')
      @grouped_payments = GroupedPayment.create(group_id: @group.id, payment_id: @payment.id)
      expect(@grouped_payments.payment_id).to eq(@payment.id)
    end
  end
end
