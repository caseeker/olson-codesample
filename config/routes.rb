Rails.application.routes.draw do
  root to: 'visitors#index'
  get '/reverse', to: 'reverse#reverse'
end
