Rails.application.routes.draw do
  resources :suppliers
  resources :books
  resources :authors
  scope "(:locale)", locale: /pt-BR|en/ do

  end
end
