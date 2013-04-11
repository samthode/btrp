require 'spec_helper'

describe User do 

	before {  @user = User.new(
															rank: "1LT",
															firstName:"Sam",
															lastName:"T",
															middleInitial: "C",
															dateOfBirth: "13-Aug-1988",
															MOS:"19A",
															ets_pcsDate:"1-NOV-2015",
															phoneNum:"(718) 440-2445",
															address: "blank")  
	}

	subject {  @user  }

	it {  should respond_to(:rank)  } 
	it {  should respond_to(:firstName)  }
	it {  should respond_to(:lastName)  }
	it {  should respond_to(:middleInitial)  }
	it {  should respond_to(:dateOfBirth)  }
	it {  should respond_to(:MOS)  }
	it {  should respond_to(:ets_pcsDate)  }
	it {  should respond_to(:phoneNum)  }
	it {  should respond_to(:address)  }

	it {  should be_valid  }

	describe "when first name is too long" do
		before {  @user.firstName = "a" * 16  }
		it {  should_not be_valid  }
	end

	describe "when last name is too long" do
		before {  @user.lastName = "a" * 21  }
		it {  should_not be_valid  }
	end

	describe "when middle initial is too long" do
		before {  @user.middleInitial = "a" * 2  }
		it {  should_not be_valid  }
	end

	describe "when rank is not present" do
		before {  @user.rank = ""  }
		it {  should_not be_valid  }
	end

	describe "when First Name is not present" do
		before {  @user.firstName = ""  }
		it {  should_not be_valid  }
	end

	describe "when Last Name is not present" do
		before {  @user.lastName = ""  }
		it {  should_not be_valid  }
	end

	describe "when Middle Initial is not present" do
		before {  @user.middleInitial = ""  }
		it {  should_not be_valid  }
	end

	describe "when Date of Birth is not present" do
		before {  @user.dateOfBirth = ""  }
		it {  should_not be_valid  }
	end

	describe "when MOS is not present" do
		before {  @user.MOS = ""  }
		it {  should_not be_valid  }
	end

	describe "when ETS/PCS Date is not present" do
		before {  @user.ets_pcsDate = ""  }
		it {  should_not be_valid  }
	end

	describe "when Phone Number is not present" do
		before {  @user.phoneNum = ""  }
		it {  should_not be_valid  }
	end

	describe "when address is not present" do
		before {  @user.address = ""  }
		it {  should_not be_valid  }
	end
end 	