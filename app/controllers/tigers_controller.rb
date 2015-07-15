class TigersController < ApplicationController

  def index
    @tigers = Tiger.all
    session[:candy] = "cotton"
  end

  def show
  end

  def new
    @tiger = Tiger.new
  end

  def create
    @tiger = Tiger.new(tiger_params)
    if @tiger.save
      redirect_to tigers_path(@tiger)
    else
      render :new
    end
  end

  private
    def tiger_params
      params.require(:tiger).permit(:name)
    end
end
