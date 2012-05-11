MetaTypesDemo::Application.routes.draw do
  resources :meta_types
  resources :meta_type_properties
  resources :things
  get "reset", to: 'dashboard#reset'
  root to: 'dashboard#index'
end
