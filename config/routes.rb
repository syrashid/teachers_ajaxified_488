Rails.application.routes.draw do
  get 'teachers/index'
  get 'teachers/show'
  root to: 'pages#home'
  resources :teachers, only: [:index, :show]
end
