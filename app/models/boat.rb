class Boat < ApplicationRecord
  belongs_to :user
  has_many :boat_jobs
end
