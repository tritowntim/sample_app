require 'spec_helper'

describe "UserPages" do
  include ApplicationHelper  #needed to access helper method

	subject { page }

	describe "Signup Page" do

		before do
			visit signup_path 
		end

		it { should have_selector('h1', :text => 'Sign up') }
		it { should have_selector('title', :text => full_title('Sign up')) }

	end

	describe "Profile page" do 
		
		# Code to make a user variable
		let(:user) { FactoryGirl.create(:user) }
		before { visit user_path(user) }

		it { should have_selector('h1', :text => user.name) }
		it { should have_selector('title', :text => user.name) }

	end
	
end
