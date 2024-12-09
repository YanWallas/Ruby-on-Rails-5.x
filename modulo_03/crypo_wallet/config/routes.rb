Rails.application.routes.draw do
  resources :mining_types
  get 'welcome/index'
  
  resources :coins #esse recurso cria 7 route com CRUD
  #get '/coins', to: 'coins#index' -> route se fosse feito a mao, sem usar resources

  root to: 'welcome#index' # Route Padrão do sistema ('/')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
