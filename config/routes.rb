Rails.application.routes.draw do
  get 'userpage/new'
  get 'home/new'
  get 'sessions/new'
  get 'users/new'
  get 'rooms/show'
  root 'pages#index'
   #このファイルがトップページ表示　トップページのルーティング表示
  get 'peges/help'
   #これによりpages/helpというurlとpages#helpというアクションが紐付きました。
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
