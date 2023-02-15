# frozen_string_literal: true

Rails.application.routes.draw do
  root 'games#index'
  resources :games, only: %i[index new]
  resources :users, only: :create
  get 'u/:username', to: 'users#show', as: 'user'

  scope 'u/:username' do
    resources :games, only: %i[create show] do
      resources :turns, only: %i[create show]
    end
  end
end
