class JobsController < ApplicationController
  def index
    @jobs = Job.all.reverse
  end

  def new
    @job = Job.new
  end

  def create
    @job = current_user.jobs.create(job_params)
    redirect_to jobs_path
  end

  def show
    @job = Job.find(params[:id])
  end

  def edit
    @job = current_user.jobs.find(params[:id])
  end

  def update
    @job = current_user.jobs.find(params[:id])
    @job.update_attributes(job_params)
    redirect_to @job
  end

  def destroy
    current_user.jobs.find(params[:id]).destroy
    redirect_to users_path
  end

  private
  def job_params
    params.require(:job).permit(:description, :orgin, :destination, :cost, :containers)
  end
end
