Rails.application.routes.draw do
  get 'shortener/index'

  root 'shortener#index'
end
