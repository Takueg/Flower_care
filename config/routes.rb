Rails.application.routes.draw do
  devise_for :users
  root to: 'offers#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :offers, only: [:index, :create, :new, :show] do
    resources :booking, only: [ :new, :create ]
  end
end
