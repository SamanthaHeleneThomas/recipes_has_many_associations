Rails.application.routes.draw do
  
  get 'recipe_ingredients/new'
  get 'ingredients/index'
  get 'ingredients/new'
  get 'ingredients/edit'
  get 'recipes/index'
  get 'recipes/show'
  get 'recipes/new'
  get 'recipes/edit'
  root 'recipes#index'

  resources :ingredients
  resources :recipes
  resources :recipe_ingredients, only: [:new, :create, :destroy]

end

