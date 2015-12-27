Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users, :controllers => {:registrations => "user/registrations"}
  resources :user_stocks, except:[:edit,:show,:update]
  resources :user, only:[:show]
  resources :friendship
  get 'my_portfolio', to: "users#my_portfolio"
  get 'search_stocks', to: "stocks#search"
  get 'my_friends', to: "users#my_friends"
  get 'search_friends', to: "users#search"
  post 'add_friend', to: "users#add_friend"
end
