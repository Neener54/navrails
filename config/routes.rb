Rails.application.routes.draw do
  devise_for :users#, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  mount Navit::Engine => "/navit"
  mount NavEmployeeHighlights::Engine => "/highlights"
  resources :users
  root to: 'pages#landing'
end
