Rails.application.routes.draw do
  resources :restaurants, only: [:new, :create, :index, :show] do
    resources :review, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
