class Job < ApplicationRecord
  belongs_to :user
  has_many :boat_jobs, dependent: :destroy
  has_many :boats, through: :boat_jobs

  validates :cost, presence: true, numericality: { greater_than: 1000 } 
  validates :description, uniqueness: true, presence: true, length: { minimum: 50 }
  validates_inclusion_of :origin, in: ['Sweden', 'USA', 'China', 'Thailand', 'Norway']
  validates_inclusion_of :destination, in: ['Sweden', 'USA', 'China', 'Thailand', 'Norway']
end
