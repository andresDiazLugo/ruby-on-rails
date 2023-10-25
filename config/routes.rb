Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "home#index"
  get "bienvenida", to:"home#index"
  get "articles", to:"article#index"
  get "articles/new", to:"article#new", as: :new_article
  get "articles/:id", to:"article#show"
  get "articles/:id/edit", to:"article#edit"
  patch "articles/:id", to:"article#update", as: :article
  post "articles", to:"article#create"
  delete "articles/:id", to: "article#destroy"

  # antes de declarar rutas de la manera que lo haces arriba puedes usar rest que es una aruitectura mas legible para las rutas y las haces de la siguiente manera
  # resources : articles
  # tambien puedes agregar rutas mas especificas que no contenga resources de la siguiente manera
  # resources : articles do
  # get "user/:user_id", to:"articles#from_author", on: :collection
  # end
  #
  # Defines the root path route ("/")
  # root "posts#index"
end
