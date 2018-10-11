Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/create_order', to: "orders#create", as: :create_order
  get '/:url_name', to: "toys#show", as: :toy
  root to: "toys#index"
end
