Rails.application.routes.draw do
# collection -- is for creating new crud methods doesn't have an id
#member i will have /restaurants/id


  resources :restaurants do
    collection do
      get :top
    end
    member do
      get :chef
    end
    resources :reviews, only: :create 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
