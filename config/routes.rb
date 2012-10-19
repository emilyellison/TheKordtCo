TheKordtCo::Application.routes.draw do

  root to: 'overview#home'
  
  get  '/sign_in'  => 'sessions#new', as: :sign_in
  post '/sign_in'  => 'sessions#create'
  get  '/sign_out' => 'sessions#destroy', as: :sign_out
  
  resources :users, only: [ :show ]
  resources :blog_posts, except: [ :blog_posts ]
  resources :videos, except: [ :index, :show ]
  resources :content, only: [ :edit, :update ]
  
  get '/writer'   => 'videos#writer',   as: :writer
  get '/director' => 'videos#director', as: :director
  get '/producer' => 'videos#producer', as: :producer
  get '/blogger' => 'blog_posts#index', as: :blog_posts
  
end
