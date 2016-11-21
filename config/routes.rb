Rails.application.routes.draw do
  # get 'shortener/index'

  # root 'shortener#new'


  # From: http://ruby.about.com/od/urlshort/ss/Creating-A-Url-Shortener-In-Rails.htm
  get '/:id' => 'shortener#show'

  # Show the new action (=form) on the root path
  get '/' => 'shortener#new'

  post '/create' => 'shortener#create'

end
