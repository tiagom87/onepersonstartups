class StartupsController < ApplicationController
	
  def index
  	@startups = Startup.where(state: "approved").paginate(:page => params[:page], :per_page => 9)
  end

end
