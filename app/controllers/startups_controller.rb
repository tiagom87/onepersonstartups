class StartupsController < ApplicationController
  before_action :set_startup, only: [:thankyou]
	
  def index
  	@startups = Startup.where(state: "approved").paginate(:page => params[:page], :per_page => 30)
  end

  def new
  	@startup = Startup.new
  end

  def create
    @startup = Startup.new(startup_params)
    respond_to do |format|
      if @startup.save
        format.html {redirect_to thankyou_path(@startup.guid), notice: "Startup Submitted Successfully"}
      else
        format.html {render :new}
      end
    end
  end

  def thankyou
  end

  private

  def startup_params
    params.require(:startup).permit(:creator_name, :name, :hollywood, :startup_url, :revenue)
  end

  def set_startup
    @startup = Startup.find_by(guid: params[:guid])
  end

end