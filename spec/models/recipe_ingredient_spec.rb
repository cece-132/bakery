require "rails_helper"

RSpec.describe RecipeIngredient, type: :model do

  describe 'validations' do

  end

  describe 'relationships' do
    it { should belong_to :recipe }
    it { should belong_to :ingredient }
  end
end
