# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.
require 'rails_helper'

RSpec.describe "Merchant Show Page" do
  describe "When I click a merchant link from the index page" do
    it "I see a list of items that merchant sells" do
      
      visit "/merchants"

      click_on "Schroeder-Jerde"

      expect(current_path).to eq("/merchants/1")

      expect(page).to have_content("Schroeder-Jerde")

      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Description: Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
      expect(page).to have_content("Unit Price: 42.91")
    end
  end
end