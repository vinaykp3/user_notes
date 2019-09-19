class Note < ApplicationRecord
	belongs_to :user
	has_many :taggings
	has_many :tags, through: :taggings

	def testing_git_flow
		
	end
end
