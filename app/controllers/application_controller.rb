# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base

	session :session_key => '_depot_session_id'

  helper :all # include all helpers, all the time

	# See ActionController::RequestForgeryProtection for details
	# Uncomment the :secret if you're not using the cookie session store
	protect_from_forgery :secret => 'cfc3a6b86af4766376813112a3fd62dc'

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
