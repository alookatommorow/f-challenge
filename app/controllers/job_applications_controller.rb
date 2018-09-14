class JobApplicationsController < ApplicationController
  before_action :authenticate_applicant!

  def create
    binding.pry
    # JobApplication.create()
  end

  private

  def job_application_params
    params.require(:job_application).permit(:employer_id, :applicant_id)
  end
end