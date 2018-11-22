class Person < ApplicationRecord
  has_one :address
  has_many :cars
  has_many :pets
end
