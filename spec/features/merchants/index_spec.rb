require "rails_helper"

# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name



# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.

RSpec.describe 'Merchants Index Page' do
  it "displays list of all merchants" do 
    visit "/merchants"

    expect(page).to have_content("Merchants")
    expect(page).to have_content("Schroeder-Jerde")
  end

  it "displays merchant names as links that go to merchant show page" do 
    visit merchants_path

    click_link "Schroeder-Jerde"

    expect(current_path).to eq("/merchants/1")
    expect(page).to have_content("Schroeder-Jerde's Page")
  end
  
end