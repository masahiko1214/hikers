class TrekkingsController < ApplicationController



  def index
    @mountain = Mountain.find(params[:mountain_id])

    unless hiker_signed_in?
      redirect_to descriptions_path
    
    end
  end

def new
  @mountain = Mountain.find(params[:mountain_id])
    

end

end
