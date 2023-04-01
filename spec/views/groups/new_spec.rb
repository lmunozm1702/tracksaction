require 'rails_helper'

RSpec.describe 'New Group', type: :system do
  describe 'GROUP #create' do
    it 'creates a new group' do
      visit groups_path
      fill_in('Email', with: 'lmunozm1702@gmail.com')
      fill_in('Password', with: 'Mati1406_')
      click_button('Log in')
      click_link('New Category', match: :first)
      expect(current_path).to have_content('/groups/new')

      fill_in('Name', with: "Name #{Date.new}")
      fill_in('Icon',	with: 'https://www.ccpc.ie/consumers/wp-content/uploads/sites/2/2020/12/travel-icon.png')
      click_button('Save')
      expect(current_path).to have_content('/groups.')
      expect(page).to have_content('CATEGORIES')
    end
  end
end
