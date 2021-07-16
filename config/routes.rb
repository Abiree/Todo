Rails.application.routes.draw do
  root "to_do_list#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  

  resources :to_do_list
end
