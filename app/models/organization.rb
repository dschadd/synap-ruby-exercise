class Organization < ApplicationRecord

  has_many :people
  belongs_to :address

end
