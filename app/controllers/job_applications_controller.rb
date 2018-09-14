class JobApplicationsController < ApplicationController
  before_action :authenticate_applicant!

  def create
    JobApplication.create(job_application_params)
    redirect_to applicant_path(current_applicant)
  end

  private

  def job_application_params
    params.require(:job_application).permit(:employer_id, :applicant_id)
  end
end