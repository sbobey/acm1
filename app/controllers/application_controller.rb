class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :redirect_to_https 
  
  def redirect_to(options = {}, response_status = {})
     if request.xhr?
       render(:update) {|page| page.redirect_to(options)}
     else
       super(options, response_status)
     end
  end
  
  def redirect_to_https
#   redirect_to :protocol => "https://" unless (request.ssl? || local_request? || Rails.env.development?)
    redirect_to :protocol => "https://" unless (request.ssl? || Rails.env.development?)
  end
   
 
end
