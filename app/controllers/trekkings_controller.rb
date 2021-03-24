class TrekkingsController < ApplicationController
  before_action :authenticate_hiker!

  def index
    @mountain = Mountain.find(params[:mountain_id])
    
  end

def new
  @mountain = Mountain.find(params[:mountain_id])
    

end

end
