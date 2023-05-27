require 'rails_helper'

RSpec.describe 'Bakers' do

  describe 'index' do
    it 'lists all the bakers' do
      b1 = Baker.create!(name: 'Timmy')
      b2 = Baker.create!(name: 'Tina')

      visit bakers_path

      expect(page).to have_content(b1.name)
      expect(page).to have_content(b2.name)
    end

    it 'the bakers name links to a show page' do
      b1 = Baker.create!(name: 'Timmy')
      visit bakers_path

      expect(page).to have_link("#{b1.name}")
    end
  end

  describe 'show' do
    it 'can be accessed from the index page' do
      b1 = Baker.create!(name: 'Timmy')
      visit bakers_path

      click_link b1.name
      expect(has_current_path?(baker_path(b1))).to eq true
    end
  end

end