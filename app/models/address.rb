class Address < ApplicationRecord

  has_many :people
  has_many :organizations

end
