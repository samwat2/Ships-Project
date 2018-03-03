class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = current_user.boats.create(boat_params)
    redirect_to boats_path
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def edit
    @boat = current_users.boats.find(params[:id])
  end

  def update
    @boat = current_users.boats.find(params[:id])
    @boat.update_attributes(boat_params)
    redirect_to @boat
  end

  def destroy
    current_user.boats.find(params[:id]).destroy
    redirect_to users_path
  end

  private
  def boat_params
    params.require(:boat).permit(:name, :containers, :location)
  end
end
