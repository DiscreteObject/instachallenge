require 'spec_helper'

feature "Visiting home page" do
  scenario "They see the home page" do
    visit '/'
    expect(page).to have_content "Welcome to Instachallenge"

  end

end