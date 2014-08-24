require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'demo app'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('Demo App')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Teach the foxes to tweet | Home")
    end
  end
  
  describe "Fox Help page" do
    it "should have the content 'help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      expect(page).to have_content('help')

    end
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Teach the foxes to tweet | Help")
    end
  end

  describe "About Us" do
    it "should have the content 'princess'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/about'
      expect(page).to have_content('Princess')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("Teach the foxes to tweet | About Us")
    end
  end
end

