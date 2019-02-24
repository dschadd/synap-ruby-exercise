# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'crm_exercise_data.csv'))

csv = CSV.parse(csv_text, :headers=> true, :encoding => 'ISO-8859-1')

csv.each do |row|

  a = Address.new
  a.street = row['street']
  a.city = row['city']
  a.state = row['state']
  a.zip = row['zip']
  a.save!
  puts "#{a.street} saved"

  if !Organization.find_by(name: row['organization'])
    o = Organization.new
    o.name = row['organization']
    o.phone = row['organization_phone']
    o.domain = row['domain']  
    o.address_id = a.id
    o.save!
    puts "#{o.name} saved"
  end

  p = Person.new
  p.name = row['name']
  p.job_title = row['job_title']
  p.email_address = row['email_address']
  p.phone = row['phone']
  p.organization_id = Organization.find_by(name: row['organization']).id || p.organization_id = o.id
  p.address_id = a.id
  p.save!
  puts "#{p.name} saved"

end

puts "There are now #{Person.count} rows in the people table"
puts "There are now #{Address.count} rows in the address table"
puts "There are now #{Organization.count} rows in the organization table"