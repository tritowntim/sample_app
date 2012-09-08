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

end
