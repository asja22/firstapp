Rails.application.routes.draw do
  root 'employees#home'
  #get '/list' , to: 'employees#list'
  get '/new' , to: 'employees#new'
  post '/new' , to: 'employees#create'
  #get '/edit' , to: 'employees#edit'
  
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/search' => 'employees#search' # , :as => 'search_page'
  
end
