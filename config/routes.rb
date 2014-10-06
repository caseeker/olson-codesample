Rails.application.routes.draw do
  root to: 'visitors#index'
  get '/reverse', to: 'reverse#reverse'
  get '/factorial', to: 'factorial#factorial'
  get '/prime', to: 'prime#prime'
  get '/run_length', to: 'run_length#run_length'
end
