Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root 'home#index'
    get 'home/movies', to: 'movie#index'
    get 'home/movies/:id', to: 'movie#moviepage'
  get 'home/games', to: 'game#index'
  get 'home/games/:id', to: 'game#gamepage'
  get 'home/books', to: 'book#index'
  get 'home/books/:id', to: 'book#bookpage'
end
