class EmployersController < ApplicationController
  before_action :authenticate_employer!

  def show
    @applicants = Employer.find(params[:id]).applicants
  end
end