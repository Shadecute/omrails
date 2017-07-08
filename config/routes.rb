Rails.application.routes.draw do
  resources :posts
  resources :tweets
  ActiveAdmin.routes(self)
# my custom devise routes
  devise_for :users
  as :user do
  	get "signin" => 'devise/sessions#new'
  	delete "signout" => 'devise/sessions#destroy'
  	get "signup" => 'devise/registrations#new'
  end
# defualt routes
  root 'pages#home'
  get  'about'=>'pages#about'
  get  'contact'=> 'pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
