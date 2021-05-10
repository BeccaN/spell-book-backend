Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do 
      resources :spell_books #'http://localhost:3000/api/v1/spell_books'
      resources :spells
    end
  end

end
