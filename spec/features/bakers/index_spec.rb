require 'rails_helper'

RSpec.describe 'Bakers' do
  describe 'index' do
    it 'lists all the bakers' do
      b1 = Baker.create!(name: 'Timmy')

      visit bakers_path

      expect(page).to have_content(b1.name)
    end
  end
end