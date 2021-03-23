class HikersController < ApplicationController

def show
@hiker = Hiker.find(params[:id])

end

end
