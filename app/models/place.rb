class Place < ApplicationRecord
	belongs_to :user
	has_many :comments


	geocoded_by :address
	after_validation :geocoded

	
	validates :name, presence: true
end
