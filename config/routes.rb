Rails.application.routes.draw do
  get 'sessions/new'
  resources :users, only: [:new, :create, :show, :edit, :destroy]# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
