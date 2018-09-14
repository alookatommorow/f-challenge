class JobApplication < ActiveRecord::Base
  validates :applicant_id, :employer_id, presence: true
  
  belongs_to :applicant
  belongs_to :employer

  enum status: { open: 0, accepted: 1, rejected: 2 }
end