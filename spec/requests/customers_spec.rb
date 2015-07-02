require 'spec_helper'

 describe "customer" do

  describe "Index page" do
    it "should have the content 'Ruby Benefit Fund'" do
	visit '/customer/index'
	page.should have_content('Ruby Benefit Fund')      
    end
  end

  describe "show page" do
    it "should have the content 'show'" do
	visit '/customer/show'
	page.should have_content('show')      
    end
  end
end
