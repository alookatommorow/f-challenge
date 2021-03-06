class ApplicantsController < ApplicationController
  before_action :authenticate_applicant!

  def show
    @applicant = Applicant.find(params[:id])
    @applied_employers = @applicant.employers
    @open_employers = Employer.all - @applied_employers
  end
end
