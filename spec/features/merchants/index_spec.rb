# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.
require 'rails_helper'

RSpec.describe "Merchants Index Page", type: :feature do
  describe "As a visitor" do
    it "I sshould see a list of merchants by name" do

      visit merchants_path

      expect(page).to have_content("Schroeder-Jerde")
      expect(page).to have_content("Klein, Rempel and Jones")
      expect(page).to have_content("Willms and Sons")
    end
  end
end