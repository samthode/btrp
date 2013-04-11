class User < ActiveRecord::Base
  attr_accessible :MOS, :address, :dateOfBirth, :ets_pcsDate, :firstName, 
  :lastName, :middleInitial, :phoneNum, :rank

  validates :rank, 					presence: true
  validates :firstName, 		presence: true, length: {  maximum: 15  }
  validates :lastName, 			presence: true, length: {  maximum: 20  }
  validates :middleInitial, presence: true, length: {  maximum: 1  }
  validates :email,					presence: true
  validates :dateOfBirth,	  presence: true
  validates :MOS,					  presence: true
  validates :ets_pcsDate,	  presence: true
  validates :phoneNum,		  presence: true
  validates :address,			  presence: true

end
