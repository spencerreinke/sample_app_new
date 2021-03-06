require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

	describe "Contact Page" do

		it "should have the title 'Contact Us" do
			visit '/static_pages/contact'
			expect(page).to have_title("#{base_title} | Contact Us")
		end

		it "should have the content 'Contact Us'" do
			visit '/static_pages/contact'
			expect(page).to have_content("Contact Us")
		end

		it "should have the content 'Phone 530.386.5833'" do
			visit '/static_pages/contact'
			expect(page).to have_content("Phone 530.386.5833")
		end
	end

  describe "Home page" do

    it "should have the content 'Sample App'" do
     	visit '/static_pages/home'
     	expect(page).to have_content("Sample App")
    end

    it "should have the title 'Home'" do
    	visit '/static_pages/home'
    	expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe "Help Page" do

  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content("Help")
  	end

  	it "should have the title 'Help'" do
    	visit '/static_pages/help'
    	expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About Page" do

  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content("About Us")
  	end

    it "should have the title 'About Us'" do
    	visit '/static_pages/about'
    	expect(page).to have_title("#{base_title} | About Us")
    end
  end
end