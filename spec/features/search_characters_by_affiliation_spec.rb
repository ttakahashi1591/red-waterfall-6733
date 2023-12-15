require 'rails_helper'

RSpec.feature 'Search Characters by Affliliation', type: :feature do
  describe 'User selects affliation search by using drop down on root page' do
    describe "user selects fire nation from the drop down and clicks on the search for memebers button" do
      it "Then the user should be on the search index page where the total number of people living in the fire nation is listed and the first 25 memebers with the following details: name (and photo is available), list of allies, list of enemies, and any affiliations" do
        visit root_path
    
        select 'Fire Nation', from: :nation
        
        click_button 'Search For Members'
    
        expect(current_path).to eq('/search')
    
        expect(page).to have_content('Total Members:')
    
        expect(page).to have_selector('.member-list', count: 25)
    
        within(first('.member-list')) do
          expect(page).to have_content('Name: Azula')
          expect(page).to have_content('Allies: Ozai, Zuko')
          expect(page).to have_content('Enemies: Iroh, Zuko, Kuei, Long Feng, Mai, Ty Lee, Ursa')
          expect(page).to have_content("Affiliations: Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
        end
      end
    end
  end
end
