require 'rails_helper'

RSpec.describe 'Baker' do
  
  describe 'update' do
    it 'has an edit a baker page' do
      b1 = Baker.create!(name: 'Timmy')

      visit edit_baker_path(b1)

      expect(current_path).to eq edit_baker_path(b1)
    end

    it 'can update baker info'
    
  end

end