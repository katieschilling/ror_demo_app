require 'rails_helper'

describe "Static Pages" do

  let(:base_title) {"Teach the sleepy foxes to tweet"}
  subject { page }

  describe "Home page" do
    before { visit root_url }
    it { should have_content('Twitter') }
    it { should have_title("#{base_title}") }
  end
  
  describe "Fox Help page" do
    it "should have the content 'help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit help_path
      expect(page).to have_content('help')

    end
    it "should have the right title" do
      visit help_path
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About Us" do
    it "should have the content 'princess'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit about_path
      expect(page).to have_content('Princess')
    end
    it "should have the right title" do
      visit about_path
      expect(page).to have_title("#{base_title} | About Us")
    end
  end

  describe "Contact page" do 
    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end

