class Comment < ActiveRecord::Base
	belongs_to :commentable, :ploymorephic => true
end
