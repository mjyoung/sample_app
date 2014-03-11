require_relative '../spec_helper'

describe "Static pages" do
  subject {page}

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title('RoR Sample App') }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit help_path
      expect(page).to have_title('RoR Sample App | Help')
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit about_path
      expect(page).to have_title('RoR Sample App | About')
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title('RoR Sample App | Contact')
    end

  end

end