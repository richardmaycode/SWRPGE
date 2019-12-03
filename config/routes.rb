Rails.application.routes.draw do
  namespace :encyclopedia do
    resources :characteristics, only: [:index, :show]    
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
