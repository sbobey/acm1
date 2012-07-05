class Case < ActiveRecord::Base

	def	after_save()
		puts "AFTER SAVE"
		puts self.id
	end	



end
