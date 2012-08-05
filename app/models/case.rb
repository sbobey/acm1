class Case < ActiveRecord::Base

	def before_save()
	    puts "ENTER CASE BEFORE SAVE: "
		puts "! ! ! ! ! ! !"
		puts "! ! ! ! ! ! !"
		puts "! ! ! ! ! ! !"
	
	    if ! self.anes_sid.nil? 
			myprov = Prov.find(self.anes_sid)
			myname = myprov.lname + ", " + myprov.fname
			puts "PROV NAME: "
			puts myname
			self.anes_provider = myname
		else
			puts "PASS ANES: "
		end	
		
		if ! self.surg_sid.nil?
			myprov = Surg.find(self.surg_sid)
			myname = myprov.lname + ", " + myprov.fname
			puts "SURG NAME: "
			puts myname
			self.surg_provider = myname
		else
			puts "PASS SURG: "
		end
		
	end	

end
