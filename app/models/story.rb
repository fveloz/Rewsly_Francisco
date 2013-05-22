class Story < ActiveRecord::Base
	validates :title, :link, :category, :upvotes, presence: true
	
	

def self.search_for(query)
		where('title LIKE ? OR link LIKE? OR category LIKE?', "%#{query}%","%#{query}%", "%#{query}%")
	end
end


