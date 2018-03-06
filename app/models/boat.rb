class Boat < ApplicationRecord
  belongs_to :user
  has_many :boat_jobs, dependent: :destroy
  has_many :jobs, through: :boat_jobs
  has_one_attached :image
end
