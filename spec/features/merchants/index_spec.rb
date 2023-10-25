require 'rails_helper'

RSpec.describe "Merchants Index Page", type: :feature do
  describe "As a visitor" do
    it "I should see a list of merchants by name and links to their show pages" do

      visit merchants_path

      expect(page).to have_content("Schroeder-Jerde")
      expect(page).to have_content("Klein, Rempel and Jones")
      expect(page).to have_content("Willms and Sons")

      expect(page).to have_link("Schroeder-Jerde")
      expect(page).to have_link("Klein, Rempel and Jones")
      expect(page).to have_link("Willms and Sons")
    end
  end
end