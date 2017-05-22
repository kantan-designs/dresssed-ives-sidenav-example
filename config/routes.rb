Rails.application.routes.draw do
  get '/one', to: 'home#one'
  get '/two', to: 'home#two'
  get '/three', to: 'home#three'
  get '/four', to: 'home#four'
  root to: 'home#dashboard'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
