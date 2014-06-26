class JuicesController < ApplicationController

  def index
    @juice = Juice.new
    @juices = Juice.all
  end

  def create
    @juice = Juice.create(juice_params)
    if @juice.save
      redirect_to juices_path
    else
      render :index
    end
  end

  private

  def juice_params
    params.require(:juice).permit(:flavor, :ingredients)
  end
end