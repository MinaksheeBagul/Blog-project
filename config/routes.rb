Rails.application.routes.draw do
 root 'pages#home'
 get 'about', to:'pages#about'
#  get 'articles', to:'pages#articles'

# resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
# OR another to display this
resources :articles
end