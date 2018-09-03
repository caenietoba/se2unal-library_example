Rails.application.routes.draw do
    
  resources :books
  
end

#resources :books, except: :destroy // resources :books, only: [:destroy, :create]
#resurces :comments, contraints: {subdomain: 'api'}
#with_options only: [:destroy, :create] do [list_only]
#    list_only.resources :books
#    list_only.resources :authors
#  end
