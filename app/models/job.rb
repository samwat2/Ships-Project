class Job < ApplicationRecord
  belongs_to :user
  has_many :boat_jobs, dependent: :destroy
  has_many :boats, through: :boat_jobs

  validates :cost, presence: true, numericality: { greater_than: 1000 } 
end
