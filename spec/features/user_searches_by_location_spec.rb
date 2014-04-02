require 'spec_helper'

feature "User may search for media by lat/long coordinates" do
  scenario do
    visit '/'
    fill_in "latitude", with: "48.858844"
    fill_in "longitude", with: "2.294351"
    fill_in "distance", with: "1"
    click_on "Search"

    expect(page).to have_content("Here are your results:")
  end
end