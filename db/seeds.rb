# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  { name: 'Geico Inc.'},
  { name: 'Lizard Lounges Inc.'},
  { name: 'Radio Broadcasters International'},
  { name: 'Synchronicity Ltd.'},
  { name: 'Claypots LLC'},
  { name: 'Washboard Sound Systems'},
].each_with_index do |employer, index|
  employer[:email] = "email_#{index}@business.net"
  new_employer = Employer.new(employer)
  new_employer.save(validate: false)
end

[
  { name: 'David Bowie'},
  { name: 'Aretha Frankin'},
  { name: 'Gregg Allman'},
  { name: 'Jill Janus'},
  { name: 'Chuck Berry'},
].each_with_index do |applicant, index|
  applicant[:email] = "email_#{index}@needajob.now"
  new_applicant = Applicant.new(applicant)
  new_applicant.save(validate: false)
end