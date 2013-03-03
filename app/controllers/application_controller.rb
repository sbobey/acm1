class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :redirect_to_https 
  before_filter :authorize 
  
    
  def redirect_to(options = {}, response_status = {})
     if request.xhr?
       render(:update) {|page| page.redirect_to(options)}
     else
       super(options, response_status)
     end
  end
  
  def redirect_to_https
#   redirect_to :protocol => "https://" unless (request.ssl? || request.local? || Rails.env.development?)
  end
   
  def authorize
    puts "HERE IT IS: "
	puts self.controller_name
	puts self.action_name
	return if self.action_name == 'upload'
  
	unless User.find_by_id(session[:uid]) || session[:uid] == 9999
		redirect_to users_login_path
	end		
  end	
 
   def errdisplay
    respond_to do |format|
      format.js
      format.xml  { render :xml => @loc }
    end
  end
  
end
