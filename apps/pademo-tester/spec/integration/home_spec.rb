require 'spec_helper'

describe "Home Page Integration Test" do 
  it "has welcome text" do 
    visit('/')
    expect(page).to have_content 'Hello from pademo-core'
  end
end
