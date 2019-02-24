json.array! @people.each do |person|
  json.id person.id
  json.name person.name
  json.job_title person.job_title
  json.email_address person.email_address
  json.phone person.phone
end