class User < ActiveRecord::Base
 	belongs_to :job

 	validates :job_id, :presence => true

	validates :lastname, :presence => true
	validates :firstname, :presence => true
	validates :password, :presence => true
	validates_confirmation_of :password 

	validates :login, :presence => true, :uniqueness => true
end
