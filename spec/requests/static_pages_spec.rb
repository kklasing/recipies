require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the content 'Recepten App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Recepten App')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Recepten App | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Recepten App | Help")
    end
  end

  describe "About page" do
    it "should have the content 'Over de Recepten App'" do
      visit '/static_pages/about'
      expect(page).to have_content('Over de Recepten App')
    end
    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Recepten App | About")
    end
  end


end
