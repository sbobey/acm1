class User < ActiveRecord::Base
	validates_presence_of :userid
	validates_presence_of :password  
	validates_presence_of :name  
	validates_presence_of :res6  
end
