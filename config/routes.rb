Rails.application.routes.draw do
  # get 'gameplay/index'

  # get 'gameplay/create'

  # get 'gameplay/round/:id' => 'gameplay#round', as: 'gameplay_round'

  # get 'gameplay/match'

  get 'pages/index'

  get 'pages/contact_us'

  get 'pages/profile'

  get 'pages/settings'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :quotes
  resources :corrects do
    resources :incorrects
  end
  devise_for :users

  resources :games, only: [:index, :create] do
    resources :rounds, only: [:show] do
      resources :matches, only: [:show]
      get 'match' => 'matches#set_match', as: :matches
    end
    get 'round' => 'rounds#set_round', as: :rounds
  end

  root 'pages#index'

end
