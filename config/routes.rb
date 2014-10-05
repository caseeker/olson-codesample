Rails.application.routes.draw do
  root to: 'visitors#index'
  get '/reverse', to: 'reverse#reverse'
  get '/factorial', to: 'factorial#factorial'
  get '/prime', to: 'prime#prime'
end
