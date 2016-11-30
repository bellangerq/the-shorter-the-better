Rails.application.routes.draw do

  resources :shorteners

  get "/s/:slug" => "shorteners#redirect", as: :s

  root 'shorteners#new'

end
