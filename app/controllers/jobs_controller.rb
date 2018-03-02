class JobsController < ApplicationController
  def index
    @jobs = Job.all
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
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update_attributes(job_params)
    redirect_to @job
  end

  def destroy
    Job.find(params[:id]).destroy
    redirect_to users_path
  end

  private
  def job_params
    params.require(:job).permit(:description, :orgin, :destination, :cost, :container)
  end
end
