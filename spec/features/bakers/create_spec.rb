require 'rails_helper'

RSpec.describe 'Baker' do
  
  describe 'create' do
    it 'has link to visit new page' do
      b1 = Baker.create!(name: 'Timmy')

      visit bakers_path

      click_link 'Create Baker'

      expect(current_path).to eq new_baker_path
    end

    it 'can create a new instance of baker' do
      total = Baker.all.count
      expect(total).to eq 0

      visit new_baker_path

      fill_in :name, with: "Toby Boy"
      click_on 'Submit'
      expect(Baker.all.count).to eq 1
    end
  end

end