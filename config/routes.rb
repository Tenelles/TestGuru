Rails.application.routes.draw do

  get '/tests/:id/questions', to: 'questions#index'
  get '/questions/:id', to: 'questions#show'
  get '/tests/:id/questions/new', to: 'questions#new'
  get '/questions/:id/delete', to: 'questions#delete'

  post '/tests/:id/questions/create', to: 'questions#create'
  post '/questions/:id/destroy', to: 'questions#destroy'
end
