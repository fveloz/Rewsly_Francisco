RewslyFrancisco::Application.routes.draw do
  # get "stories_controller/index"

  root 'stories_controller#index'
  get '/stories', to: 'stories_controller#index'

end
