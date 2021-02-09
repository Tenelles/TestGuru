Rails.application.routes.draw do

  get '/tests/:id/questions', to: 'questions#index'
  get '/questions/:id', to: 'questions#show'

  post '/questions', to: 'questions#create'

  delete '/questions/:id', to: 'questions#destroy'
end
