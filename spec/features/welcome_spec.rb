require 'rails_helper'

RSpec.describe 'Characterse index page', type: :feature do
  describe "when I visit /" do
    it "I see all characters listed with their attributes" do
      visit '/'      
      # has_select?('Locale', with_options: ['Fire Nation'])
     
      # select('Air Nomads', from: 'nation')
      select('Fire Nation', from: 'nation')
      # select('Water Tribes', from: 'nation')
      # select('Earth Kingdom', from: 'nation')
   
      click_button('Search For Members')


      expect(current_path).to eq(search_path)

      expect(page).to have_content("Population Total: 396")
      # save_and_open_page
      within(first(".character")) do
        expect(page).to have_content("Name: Arik")
        expect(page).to have_content("Allies:\nHis")
        expect(page).to have_content("Enemies:\nKorra")
        expect(page).to have_content("Affiliations: Earth Kingdom Air Force")
      end
  
    end
  end
end

# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.

# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has