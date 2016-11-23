Rails.application.routes.draw do

  resources :shorteners

  root 'shorteners#new'

end
