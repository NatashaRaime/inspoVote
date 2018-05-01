Rails.application.routes.draw do
  resources :elections_races
  root "elections#index"

  resources :races
  resources :submissions
  resources :states
  resources :voters
  resources :elections
  resources :districts
  resources :candidates
  get "vote" => "vote#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
