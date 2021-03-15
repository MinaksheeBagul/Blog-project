Rails.application.routes.draw do
 root 'pages#home'
 get 'about', to:'pages#about'
#  get 'articles', to:'pages#articles'

resources :articles, only: [:show, :index]
end