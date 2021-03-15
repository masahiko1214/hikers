class MountainsController < ApplicationController

  def  index
    @mountains = Mountain.all
  end


  def  new
    @mountain = Mountain.new
  end


  def  create
    
  end
  


end
