require 'spec_helper'

feature "Home Page Feature Test", %q{
  As a visitor of the demo 
  I want to explore from the home screen
} do 

  scenario "welcome text" do 
    visit('/')
    expect(page).to have_content 'Hello from pademo-core'
  end
end
