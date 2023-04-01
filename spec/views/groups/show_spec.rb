require 'rails_helper'

RSpec.describe 'Groups', type: :system do
  describe 'groups index page' do
    before(:each) do
      visit groups_path
      fill_in('Email', with: 'lmunozm1702@gmail.com')
      fill_in('Password', with: 'Mati1406_')
      click_button('Log in')
      visit group_path(2)
    end
    it 'shows the right content' do
      expect(page).to have_content('CATEGORY PAYMENTS')
    end
    it 'shows Payments' do
      expect(page).to have_content('Payment 70', minimum: 2)
    end
    it 'shows import' do
      expect(page).to have_content('564.00')
    end
  end
end
