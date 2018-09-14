class EmployersController < ApplicationController
  before_action :authenticate_employer!

  def show
    @employer = Employer.find(params[:id])
    @applicants = @employer.applicants
  end
end