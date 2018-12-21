class Ferret < ApplicationRecord
  belongs_to :charity
  has_many :races
  has_many :tunnels, through: :races

  validates :name, uniqueness: true, length: { minimum: 6 }
end
