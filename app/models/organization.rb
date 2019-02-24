class Organization < ApplicationRecord

  has_many :people
  belongs_to :address

  def people_count
    people_count = Person.where(organization_id: id)
    people_count.length
  end

end
