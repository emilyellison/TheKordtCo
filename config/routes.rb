TheKordtCo::Application.routes.draw do

  root to: 'overview#home'
  
  get  '/sign_in'  => 'sessions#new', as: :sign_in
  post '/sign_in'  => 'sessions#create'
  get  '/sign_out' => 'sessions#destroy', as: :sign_out
  
  resources :users, only: [ :show ]
  resources :blog_posts

end
