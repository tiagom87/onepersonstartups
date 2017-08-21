class StartupsController < ApplicationController
	
  def index
  	@startups = Startup.where(state: "approved")
  end

end
