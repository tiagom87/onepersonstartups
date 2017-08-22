class StartupsController < ApplicationController
	
  def index
  	@startups = Startup.where(state: "approved").paginate(:page => params[:page], :per_page => 9)
  end

  def new
  	@startup = Startup.new
  end

  def create
  end

  private

  def startup_params
  end

end
