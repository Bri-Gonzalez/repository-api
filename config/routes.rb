Rails.application.routes.draw do
  resources :repositories do
    resources :objs
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
