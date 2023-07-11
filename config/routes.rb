Rails.application.routes.draw do
  resources :authors
  scope "(:locale)", locale: /pt-BR|en/ do

  end
end
