class User < ApplicationRecord
	has_many :boats
	has_many :jobs
	
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true, length: {minimum: 5}
	validates :first_name, presence: true 
	validates :last_name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
