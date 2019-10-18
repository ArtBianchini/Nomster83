class Place < ApplicationRecord
	belongs_to :user
	geocoded_by :address
	after_validation :geocode

	has_many :comments
    has_many :photos

	validates :name, presence: true
end
