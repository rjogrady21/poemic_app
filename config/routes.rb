Rails.application.routes.draw do
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
  devise_for :users
  root to: 'pages#home'
  get "poems/:id", to: "poems#show",  as: :poem
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
