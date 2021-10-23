class WeightsController < ApplicationController
  def index
    @weight = Weight.new
  end

  def create
    @weight = Weight.new(weight_params)
    if @weight.save
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def weight_params
    params.require(:weight).permit(:weight, :height).merge(user_id: current_user.id)
  end
end
