require 'rails_helper'

RSpec.describe CategoriesMenu, type: :model do
  describe 'associations' do
    it { should belong_to(:menu).class_name('Menu') }
    it { should belong_to(:category).class_name('Category') }
  end
end