class WeightsController < ApplicationController
  def index
    @weight = Weight.new
  end
end
