Rails.application.routes.draw do
  root 'employees/home'
  get 'employees/list'
  get 'employees/new'
  get 'employees/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'application#hello'
end
