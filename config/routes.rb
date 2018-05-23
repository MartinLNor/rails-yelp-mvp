Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  resources :restaurants, except: [:update,:destroy,:edit] do
    resources :reviews, only: [:create]
  end

end
