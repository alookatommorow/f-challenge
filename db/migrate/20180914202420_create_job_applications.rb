class CreateJobApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :job_applications do |t|
      t.references :applicant, foreign_key: true
      t.references :employer, foreign_key: true
      t.integer :status

      t.timestamps null: false
    end
  end
end
