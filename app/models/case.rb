class Case < ActiveRecord::Base

	def	after_save()
		puts "AFTER SAVE"
		puts self.id
	end	

	def before_save()
		myprov = Prov.find(self.anes_sid)
		myname = myprov.lname + ", " + myprov.fname
		puts "PROV NAME: "
		puts myname
		self.anes_provider = myname
	end	

end
