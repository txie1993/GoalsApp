class GoalsController < ApplicationController
  def new
  end

  def show
    @goal = Goal.find(params[:id])
  end
end
