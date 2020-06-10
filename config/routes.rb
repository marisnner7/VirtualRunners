Rails.application.routes.draw do
   devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: "users/registrations" }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only:[:show, :index]

  resources :tracks, only:[:show, :new, :create, :edit, :update, :destroy] do
    resources :races, only:[:show, :create,:destroy]
    resources :messages, only:[:create]
  end
  get "/tests/get_test", to: "tests#get_test"
end
