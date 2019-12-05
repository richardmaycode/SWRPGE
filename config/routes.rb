Rails.application.routes.draw do
  namespace :encyclopedia do
    get 'main', controller: 'pages'
    resources :characteristics, only: [:index, :show]    
  end

  get '/encyclopedia', to: redirect('/encyclopedia/main')
end
