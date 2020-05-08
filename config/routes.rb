Rails.application.routes.draw do
  resources :admins
  resources :users
  # get 'manage/index'
  # get 'manage/home'
  root 'manage#home'
  match':controller(/:action(/:id))',:via =>:get
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
