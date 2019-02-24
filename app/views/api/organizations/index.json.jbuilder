json.array! @organizations.each do |organization|
  json.id organization.id
  json.name organization.name
  json.domain organization.domain
  json.phone organization.phone
end