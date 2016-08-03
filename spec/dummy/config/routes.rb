Rails.application.routes.draw do

  match '/foo' => 'foo#index', as: 'foo', via: :all

  resources :packages, only: :index do
    get :activate, on: :member
  end

  # Back-office
  mount Locomotive::Engine => '/locomotive', as: 'locomotive'

  # API
  mount Locomotive::API.to_app => '/locomotive(/:site_handle)/api'

  # Render site
  mount Locomotive::Steam.to_app => '/', anchor: false

end
