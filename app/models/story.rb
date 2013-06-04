class Story < ActiveRecord::Base
	validates :title, :link, :category, :upvotes, presence: true
	validates :title, length: {minimum: 5}
	validates :link, length: {minimum: 5}
	validates :link, :format => URI::regexp(%w(http https))
	
	belongs_to :user
	belongs_to :source
	has_many :comments, :as => :commentable
	

def self.search_for(query)
		where('title LIKE ? OR link LIKE? OR category LIKE?', "%#{query}%","%#{query}%", "%#{query}%")
	end
end


