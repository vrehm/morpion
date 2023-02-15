Rails.application.routes.draw do
  root "games#index"
  resources :games, only: [:index, :new]
  resources :users, only: :create
  get "u/:username", to: "users#show", as: "user"

  scope "u/:username" do
    resources :games, only: [:create, :show] do
      resources :turns, only: [:create, :show]
    end
  end
end
