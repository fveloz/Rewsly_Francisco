class StoriesControllerController < ApplicationController
  #index action within the controller. Array of stories.
  #currenlty all stories are manually entered. 
  def index
  	@stories = ["Dogs used to treat restless leg syndrome"]
  end
end
