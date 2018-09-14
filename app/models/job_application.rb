class JobApplication < ActiveRecord::Base
  belongs_to :applicant
  belongs_to :employer

  enum status: { open: 0, accepted: 1, rejected: 2 }
end