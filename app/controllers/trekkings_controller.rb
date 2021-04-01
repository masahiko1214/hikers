class TrekkingsController < ApplicationController
  before_action :move_to_description, only: :index


  def index
    @mountain = Mountain.find(params[:mountain_id])
    @trekking = Trekking.new(hiker_id: current_hiker.id,mountain_id: params[:mountain_id])

    unless Trekking.exists?(hiker_id: current_hiker.id,mountain_id: params[:mountain_id])  # カラムにhiker_id と mountain_idがなければ保存する
      @trekking.save
    end


    
    
    
    
  end

def new
  @trekking = Trekking.find_by(hiker_id: current_hiker.id,mountain_id: params[:mountain_id]) # 現在ログインしているhiker_idとmountain_idを探索している
  @mountain = Mountain.find(params[:mountain_id])
    

end

 private


def move_to_description
  unless hiker_signed_in?
    redirect_to descriptions_path
  end 
end

end
