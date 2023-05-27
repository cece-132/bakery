require 'rails_helper'

RSpec.describe 'Baker' do

  describe 'show' do
    it 'can be accessed from the index page' do
      b1 = Baker.create!(name: 'Timmy')
      visit bakers_path

      click_link b1.name
      expect(has_current_path?(baker_path(b1))).to eq true
    end

    it 'lists the recipes of the baker' do
      b1 = Baker.create!(name: 'Timmy')
      r1 = Recipe.create!(name: "Feel Better Love cake", number_ingredients: 5, bake_time: 45, oven_temp: 350, baker_id: b1.id)

      visit baker_path(b1)

      expect(page).to have_content("#{r1.name}")
    end
  end
  
end