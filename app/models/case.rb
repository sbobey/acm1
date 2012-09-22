class Case < ActiveRecord::Base
	validates_presence_of :patid1
	validates_presence_of :plname  
	validates_presence_of :pfname  
	validates_presence_of :pdob  
	validates_presence_of :psex  
	validates_presence_of :procedure  
	validates_presence_of :diagnosis  
	validates_presence_of :position  
	validates_presence_of :physical_state  
	validates_presence_of :start_time  
	validates_presence_of :end_time  
	validates_presence_of :surg_anes_mode  
	validates_presence_of :loc  
	validates_presence_of :servdt  
	validates_presence_of :surg_sid  
	validates_presence_of :crna_sid  
	validates_presence_of :anes_sid 
	validates_presence_of :emergency 
	validates_presence_of :inpatient 
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
		
		myreq = Integer self.postop_block_req rescue nil
		if (! myreq.nil?)
			myprov = Surg.find(self.postop_block_req)
			myname = myprov.lname + ", " + myprov.fname
			puts "REQ NAME: "
			puts myname
			self.req_provider = myname
		end
		
		myqa = Integer self.QAcode rescue nil
		if myqa == 0
			self.QAdesc = "No Indications"
	    elsif myqa == 1
			self.QAdesc = "Airway - Dental Trauma (A1)"
	    elsif myqa == 2
			self.QAdesc = "Airway - Laryngospasm (A2)"
	    elsif myqa == 3
			self.QAdesc = "Re-intubation intra-op (A3)"
	    elsif myqa == 12
			self.QAdesc = "CV - Prolonged hypotension: SBP < 100 for > 30 min, not including pt's within 20% of pre-po baseline for SBP (A12)"
	    elsif myqa == 15
			self.QAdesc = "Regional - Failed Block (A15)"
	    elsif myqa == 999
			self.QAdesc = "Other"
		end	
		
	end	

end
