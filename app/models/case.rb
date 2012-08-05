class Case < ActiveRecord::Base

	def before_save()
	    puts "ENTER CASE BEFORE SAVE: "
		puts "! ! ! ! ! ! !"
		puts "! ! ! ! ! ! !"
		puts "! ! ! ! ! ! !"
	
	    if (! self.anes_sid.nil?) && (! self.anes_sid.empty?)
			myprov = Prov.find(self.anes_sid)
			myname = myprov.lname + ", " + myprov.fname
			puts "PROV NAME: "
			puts myname
			self.anes_provider = myname
		else
			puts "PASS ANES: "
			self.anes_sid = ""
			self.anes_provider = ""
		end	
		
		if  (! self.surg_sid.nil?) && (! self.surg_sid.empty?)
			myprov = Surg.find(self.surg_sid)
			myname = myprov.lname + ", " + myprov.fname
			puts "SURG NAME: "
			puts myname
			self.surg_provider = myname
		else
			puts "PASS SURG: "
			self.surg_sid = ""
			self.surg_provider = ""
		end
		
		if  (! self.crna_sid.nil?) && (! self.crna_sid.empty?)
			myprov = Crna.find(self.crna_sid)
			myname = myprov.lname + ", " + myprov.fname
			puts "CRNA NAME: "
			puts myname
			self.crna_provider = myname
		else
			puts "PASS CRNA: "
			self.crna_sid = ""
			self.crna_provider = ""
		end
				
	end	

end
