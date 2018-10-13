Rails.application.routes.draw do

  resources :publications

  resources :cards do
    collection do
      get 'search'
    end
  end

  devise_for :users

  resources :users

  root 'cards#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
