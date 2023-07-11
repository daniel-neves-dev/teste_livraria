Rails.application.routes.draw do
  resources :accounts
  scope "(:locale)", locale: /pt-BR|en/ do
    root 'pages#home'
      resources :suppliers
    resources :books
    resources :authors
  end
end
