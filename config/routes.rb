Rails.application.routes.draw do
  root to: 'pages#home'
  resources :teachers, only: [:index, :show] do
    resources :reviews, only: :create
  end
end
