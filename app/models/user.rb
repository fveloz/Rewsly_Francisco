class User < ActiveRecord::Base
	has_many :stories
	has_many :comments, :as => :commentable
end
