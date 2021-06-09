Rails.application.routes.draw do
  root to: "main#index"

  get "landing", to: "landing#index"
  post "landing", to: "landing#create"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"


  get "table", to: "results#list"

  get "flag", to: "flag#index"

  # resources :contact_tracing_form do
  #   collection do
  #     match 'search' => 'contact_tracing_form#search', via: [:get, :post], as: :search
  #   end
  # end

end
