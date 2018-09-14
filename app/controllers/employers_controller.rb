class EmployersController < ApplicationController
  def show
    @applicants = Employer.find(params[:id]).applicants
  end
end