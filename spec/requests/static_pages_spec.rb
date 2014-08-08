require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the content 'Recepten App'" do
      visit '/'
      expect(page).to have_content('Recepten App')
    end
    it "should have the title 'Home'" do
      visit '/'
      page.should have_selector('title', :text => "Recepten App | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/help'
      page.should have_selector('title', :text => "Recepten App | Help")
    end
  end

  describe "About page" do
    it "should have the content 'Over de Recepten App'" do
      visit '/about'
      expect(page).to have_content('Over de Recepten App')
    end
    it "should have the title 'About'" do
      visit '/about'
      page.should have_selector('title', :text => "Recepten App | About")
    end
  end


end
