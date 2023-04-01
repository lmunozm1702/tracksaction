require 'rails_helper'

RSpec.describe 'Groups', type: :system do
  describe 'groups index page' do
    before(:each) do
      visit groups_path
      fill_in('Email', with: 'lmunozm1702@gmail.com')
      fill_in('Password', with: 'Mati1406_')
      click_button('Log in')
    end
    it 'shows the right content' do
      expect(page).to have_content('CATEGORIES')
    end
    it 'shows Groups 4, 3 and 2' do
      expect(page).to have_content('Group 2')
      expect(page).to have_content('Group 3')
      expect(page).to have_content('Group 4', minimum: 2)
    end
    it 'shows import' do
      expect(page).to have_content('68,575.00')
    end

    it 'shows group images' do
      expect(page).to have_css('img', minimum: 4)
    end
  end
end
