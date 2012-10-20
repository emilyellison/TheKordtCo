TheKordtCo::Application.routes.draw do

  root to: 'overview#home'
  
  get  '/sign_in'  => 'sessions#new', as: :sign_in
  post '/sign_in'  => 'sessions#create'
  get  '/sign_out' => 'sessions#destroy', as: :sign_out
  
  resources :blog_posts, except: [ :blog_posts ] do
    resources :comments, only: [ :create, :destroy ]
  end
  resources :videos, except: [ :index, :show ] do
    resources :comments, only: [ :create, :destroy ]
  end
  resources :contents, only: [ :edit, :update ]
  resources :inquiries, only: [ :new, :create ]
  
  get '/writer'   => 'videos#writer',   as: :writer
  get '/director' => 'videos#director', as: :director
  get '/producer' => 'videos#producer', as: :producer
  get '/blogger' => 'blog_posts#index', as: :blog_posts
  
  get '/manage_content' => 'contents#manage', as: :manage_content
  get '/manage_videos' => 'videos#manage', as: :manage_videos
  get '/manage_blog_posts' => 'blog_posts#manage', as: :manage_blog_posts
  
  
end
