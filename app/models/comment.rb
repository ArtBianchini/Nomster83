class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :place


	Ratings = {
		'one star': '1_star',
		'two stars': '2_stars',
		"three stars": '3_stars',
		'four stars': '4_stars',
		'five stars': '5 stars', 
	}


	def humanized_ratings
		RATINGS.invert[self.rating]
  end
end
