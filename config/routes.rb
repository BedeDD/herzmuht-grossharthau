Rails.application.routes.draw do
  resources :pages, param: :seo_url, path: 'seite'

  get '/index', to: 'application#home', as: :home
  root to: 'application#home'
end
