Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'blog', to: 'pages#blog'
  get 'contact', to: 'pages#contact'
  get 'shop', to: 'pages#shop'
  get 'looks', to: 'pages#looks'
  get 'cart', to: 'pages#cart'
  get 'signup', to: 'pages#signup'
  get 'login', to: 'pages#login'
  get 'newsletter', to: 'pages#newsletter'
  resources :contacts
end
