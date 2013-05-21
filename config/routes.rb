RewslyFrancisco::Application.routes.draw do
 
#sets the root to the staries_controller index
  root 'stories#index'
  get '/search', to: 'stories#search'
resources :stories
end
