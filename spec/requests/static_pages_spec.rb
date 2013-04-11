require 'spec_helper'

describe "StaticPages" do

	subject {  page  }

  describe "Home page" do
  	before {  visit root_path  }

  	it {  should have_link('Sign up', href: signup_path)  }
  	it {  should have_field('session_email')  }
  	it {  should have_field ('session_password')  }
  	it {  should have_button('Log in')  }
  end
end