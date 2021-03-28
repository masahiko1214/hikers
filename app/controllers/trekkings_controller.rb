class TrekkingsController < ApplicationController
  before_action :move_to_description, only: :index


  def index
    @mountain = Mountain.find(params[:mountain_id])
    @trekking = Trekking.new(hiker_id: current_hiker.id,mountain_id: params[:mountain_id])
    @trekking.save
    
    
    
  end

def new
  @mountain = Mountain.find(params[:mountain_id])
    

end

 private


def move_to_description
  unless hiker_signed_in?
    redirect_to descriptions_path
  end 
end

end
