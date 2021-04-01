Rails.application.routes.draw do
  #  resources :messages, only: [:create]
  post 'message', to: 'messages#create'
  get 'message', to: 'chatroom#index'
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  mount ActionCable.server, at: '/cable'
 
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
 