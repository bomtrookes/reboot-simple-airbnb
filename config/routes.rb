Rails.application.routes.draw do
  resources :flats do
    resources :reviews, only: [:create, :update, :destroy]
  end
end
