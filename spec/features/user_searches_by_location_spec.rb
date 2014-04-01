require 'spec_helper'

feature "User may search for media by lat/long coordinates" do
  scenario do
    visit '/'
    fill_in "lat_coord", with: "48.858844"
    fill_in "long_coord", with: "2.294351"
    fill_in "distance", with: "1000"
    click_on "Search"

    expect(page).to have_content("Photos taken at this location:")
  end
end