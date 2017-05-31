Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  root to: 'pages#index'
  # Creamery
  get '/creamery/cheese', to: 'creamery#cheese'
  get '/creamery/careers_download' => 'creamery#careers_download'
  get '/creamery/careers', to: 'creamery#careers'
  get '/creamery/apply_now_download' => 'creamery#apply_now_download'

  # Farm
  get '/farm/orders', to: 'farm#orders'
  get '/farm/animals', to: 'farm#animals'
  post '/farm/orders', to: 'farm#create_order_email', as: :create_farm_order_email
  get '/farm/careers', to: 'farm#careers'
  get '/farm/careers_download' => 'farm#careers_download'

  # Pages
  get '/gallery', to: 'pages#gallery'
  get '/contact', to: 'pages#contact'
  post '/contact', to: 'pages#create_contact_email', as: :create_contact_email

  %w( 404 500 ).each do |code|
    get code, to: 'errors#show', code: code
  end
end
