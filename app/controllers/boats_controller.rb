class BoatsController < ApplicationController
  def index
    @boats = Boat.all.reverse
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = current_user.boats.new(boat_params)
    respond_to do |format|
      if @boat.save
        format.html {redirect_to boats_path}
        format.js #vies/boats/create.js.erb
      end
    end
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
    @boat = current_user.boats.find(params[:id])
    respond_to do |format|
      if @boat.destroy
        format.html {redirect_to users_path}
        format.js
      end
    end
  end

  private
  def boat_params
    params.require(:boat).permit(:name, :containers, :location, :image)
  end
end
