class StoriesController < ApplicationController
  #index action within the controller. Array of stories.
  #currenlty all stories are manually entered. 
  def index
  	@stories = Story.all
  end
  def search
  	query = params[:q]
  	@stories = Story.search_for(query)
  end

  def new
    @story = Story.new
  end

  def create
  	stories_params = params.require('story').permit(:title, :link, :category)
  	@story = Story.new(stories_params)
    @story.upvotes = 1
    @story.save
    redirect_to @story
  end


def show
  @story = Story.find(params[:id])
end



end
