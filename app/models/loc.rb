class Loc < ActiveRecord::Base
	validates_presence_of :name  
	validates_presence_of :cat1  
	validates_presence_of :cat3  

	
end
