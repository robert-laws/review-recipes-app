Rails.application.routes.draw do
  resources :recipes, only: [:index, :show, :new, :create, :edit, :update]
  resources :ingredients, only: [:index, :show, :new, :create, :edit, :update]

  root 'recipes#index'
end
