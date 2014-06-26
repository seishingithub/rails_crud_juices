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

  def show
    @juice = Juice.find(params[:id])
  end

  def edit
    @juice = Juice.find(params[:id])
  end

  def update
    @juice = Juice.find(params[:id])
    @juice.update_attributes!(juice_params)

    redirect_to juices_path
  end

  def destroy
    @juice = Juice.find(params[:id]).delete

    redirect_to juices_path
  end

  private

  def juice_params
    params.require(:juice).permit(:flavor, :ingredients)
  end
end