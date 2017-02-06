Rails.application.routes.draw do
  root 'welcome#index' 
  resources :mercs
  resources :tipo_mercs
  resources :tipo_negs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
