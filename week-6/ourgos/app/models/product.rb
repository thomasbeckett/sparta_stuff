class Product < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :stock, numericality: {only_integers: true}

end
