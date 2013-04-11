require 'spec_helper'

describe "User pages" do

	subject {  page  }

  describe "signup page" do
  	before { visit signup_path  }

  	it {  should have_field('user_rank')  }
  	it {  should have_field('user_firstName')  }
  	it {  should have_field('user_lastName')  }
  	it {  should have_field('user_middleInitial')  }
  	it {  should have_field('user_dateOfBirth')  }
  	it {  should have_field('user_MOS')  }
  	it {  should have_field('user_ets_pcsDate')  }
  	it {  should have_field('user_phoneNum')  }
  	it {  should have_field('user_address')  }

  	it {  should have_button('Sign up')  }
  end
end
