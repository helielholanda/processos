Rails.application.routes.draw do
  resources :processos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'processos#index'
end
