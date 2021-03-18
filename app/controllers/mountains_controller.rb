class MountainsController < ApplicationController

  def  index
    @mountains = Mountain.all
  end


  def  new
    @mountain = Mountain.new
  end


  def  create
    @mountain = Mountain.new(mountain_params)
    if @mountain.save
      redirect_to root_path
    else
      render :new
    
    end
  end


  def mountain_params
    params.require(:mountain).permit(:name, :explanation, :elevation, :level_id, :time_mountain_id, :prefecture_id,
                                 :municipality, :address, :image)
  end


end
