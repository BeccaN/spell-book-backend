Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do 
      post '/login', to: 'auth#create'
      resources :spell_spell_books
      resources :spell_books #'http://localhost:3000/api/v1/spell_books'
      resources :spells
      resources :users
    end
  end
end
