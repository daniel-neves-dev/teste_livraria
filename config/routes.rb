Rails.application.routes.draw do
  scope "(:locale)", locale: /pt-BR|en/ do
    root 'pages#home'
    resources :assemblies_parts
    resources :suppliers
    resources :books
    resources :authors
  end
end
