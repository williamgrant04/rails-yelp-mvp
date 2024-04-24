Rails.application.routes.draw do
  resources :restaurants, only: %i[index show new create] do
      resources :reviews, only: %i[index new create]
  end
  resources :reviews, only: %i[show edit update destroy]
end
