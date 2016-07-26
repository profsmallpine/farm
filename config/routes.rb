Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  root to: 'pages#index'
  get '/creamery', to: 'pages#creamery'
  get '/animals', to: 'pages#animals'
  get '/orders', to: 'pages#orders'
  post '/orders', to: 'pages#create_order', as: :create_order
  get '/careers', to: 'pages#careers'
  get '/gallery', to: 'pages#gallery'
  get '/contact', to: 'pages#contact'
  post '/contact', to: 'pages#create_contact', as: :create_contact

  %w( 404 500 ).each do |code|
    get code, to: 'errors#show', code: code
  end
end
