Rails.application.routes.draw do
  resources :restaurants, only: %i[index show new create] do
      resources :reviews, only: %i[new]
  end

  post '/restaurants/:restaurant_id/reviews', to: "reviews#create", as: :review
end
