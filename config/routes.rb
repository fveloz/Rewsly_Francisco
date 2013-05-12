RewslyFrancisco::Application.routes.draw do
 
#sets the root to the staries_controller index
  root 'stories_controller#index'
  get '/stories', to: 'stories_controller#index'

end
