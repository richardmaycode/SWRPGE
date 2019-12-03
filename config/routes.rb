Rails.application.routes.draw do
  namespace :encyclopedia do
    get 'main', controller: 'pages'
    resources :characteristics, only: [:index, :show]    
  end

  get '/encyclopedia', to: redirect('/encyclopedia/main')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
