Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "themas#index"
  resources :themas do
    resources :reviews do
      resources :likes, only: [:create]
      resources :dislikes, only: [:create]
    end
  end
end
