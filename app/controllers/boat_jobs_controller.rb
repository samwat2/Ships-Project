class BoatJobsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @job = Job.find(params[:boat_job][:job_id])
    @boat = Boat.find(params[:boat_job][:boat_id])
    @type = params[:type]
    @boat.jobs << @job
    respond_to do |format|
     format.html {redirect_back fallback_location: boats_path}
     format.js
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
