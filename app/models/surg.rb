class Surg < ActiveRecord::Base
	validates_presence_of :lname
	validates_presence_of :fname  
	validates_presence_of :cat1  

	def before_save()
		myname = self.lname + ", " + self.fname
		self.cat5 = myname
    end 


end
