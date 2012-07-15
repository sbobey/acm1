class Scan < ActiveRecord::Base

	 
	def	after_save()
		puts "SCAN AFTER SAVE"
        @newid = self.id
		puts @newid
	end	

end
