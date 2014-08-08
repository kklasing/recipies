require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    before { visit root_path}

    it "should have the content 'Recepten App'" do
      expect(page).to have_content('Recepten App')
    end
    it "should have the title 'Home'" do
      page.should have_selector('title', :text => "Recepten App | Home")
    end

  end

  describe "Help page" do

    before { visit help_path}

    it "should have the content 'Help'" do
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      page.should have_selector('title', :text => "Recepten App | Help")
    end

  end

  describe "About page" do

    before { visit about_path}

    it "should have the content 'Over de Recepten App'" do
      expect(page).to have_content('Over de Recepten App')
    end
    it "should have the title 'About'" do
      page.should have_selector('title', :text => "Recepten App | About")
    end

  end

end
