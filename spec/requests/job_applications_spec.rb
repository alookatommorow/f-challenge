require 'rails_helper'

RSpec.describe 'JobApplicationsController actions', type: :request do
  describe '#create' do
    it 'creates a job application and redirects to current applicant page' do
      applicant = create(:applicant)
      employer = create(:employer)

      login_as(applicant, scope: :applicant)

      post job_applications_path, params: {
        job_application: {
          applicant_id: applicant.id,
          employer_id: employer.id,
        }
      }
      
      created_job_app = JobApplication.last

      expect(created_job_app.applicant_id).to eq applicant.id
      expect(created_job_app.employer_id).to eq applicant.id
      expect(employer.applicants.first).to eq applicant
      expect(applicant.employers.first).to eq employer
      expect(response).to redirect_to applicant_path(applicant)
    end
  end
end