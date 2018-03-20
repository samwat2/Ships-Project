class Boat < ApplicationRecord
  belongs_to :user
  has_many :boat_jobs, dependent: :destroy
  has_many :jobs, through: :boat_jobs
  has_one_attached :image

  validates :name, presence: true, uniqueness: true
  validates :containers, presence: true
  validates_inclusion_of :location, in: ['Sweden', 'USA', 'China', 'Thailand', 'Norway']
end
