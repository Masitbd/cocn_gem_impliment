Rails.application.routes.draw do
  resources :cashmasters
  root 'homes#index'
end
