Rails.application.routes.draw do
  get '/', to: 'feeds#root'
  resources :feeds
  resources :sessions, only: [:new, :create, :destroy]
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show]
end
