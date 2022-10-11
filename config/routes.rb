Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :seekers
  resources :companies
  resources :skills
  resources :interviews
  resources :genres
end
