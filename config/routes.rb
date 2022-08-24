Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get :top
    end
    # GET restaurants/top
    # pas  specifique pour une :id

    member do
      get :chef
    end
    # GET /restaurants/42/chef
    # ça prend une :id

    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]


  # 1 . ROUTES
  # 2. Controller
  # 3. VIEWS


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
