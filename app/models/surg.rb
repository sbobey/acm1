class Surg < ActiveRecord::Base

	def before_save()
		myname = self.lname + ", " + self.fname
		self.cat5 = myname
    end 


end
