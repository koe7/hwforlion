Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/write' => 'posts#write_view'
  post '/write' => 'posts#write'
  get '/posts' => 'posts#index'
  post '/destroy/:post_id' => 'posts#destroy'
  post '/update_view/:post_id' => 'posts#update_view'
  post '/update_apply/:post_id' => 'posts#update_apply'
  post '/comments/write/:post_id' => 'comments#write'
end
