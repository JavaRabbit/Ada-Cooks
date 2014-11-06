require 'rails_helper'

# RSpec.describe Recipe, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end


describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end
end
