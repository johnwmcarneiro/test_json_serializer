Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/categories', to: 'endpoints#categories'
  get '/categories/:id', to: 'endpoints#categories_show'
  get '/users', to: 'endpoints#users'
  get '/posts', to: 'endpoints#posts'
  get '/posts_ams', to: 'endpoints#posts_ams'
end
