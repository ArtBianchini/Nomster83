class Place < ApplicationRecord
	belongs_to :user
	geocoded_by :address
	after_validation :geocode

	has_many :comments


	validates :name, presence: true
end
