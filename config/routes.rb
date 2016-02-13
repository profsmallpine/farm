Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  root to: 'pages#index'
  get '/cheese', to: 'pages#cheese'
  get '/pork', to: 'pages#pork'
  get '/lamb', to: 'pages#lamb'
  get '/orders', to: 'pages#orders'
  get '/careers', to: 'pages#careers'
  get '/gallery', to: 'pages#gallery'
  get '/contact', to: 'pages#contact'

  %w( 404 500 ).each do |code|
    get code, to: 'errors#show', code: code
  end
end
