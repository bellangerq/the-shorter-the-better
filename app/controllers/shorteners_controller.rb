class ShortenersController < ApplicationController
  include ApplicationHelper

  helper_method :short_url

  def index
    @shortener = Shortener.all
  end

  def show
    @shortener = Shortener.find(params[:id])
  end

  def create
    @shortener = Shortener.new(shortener_params)

    if @shortener.save
      redirect_to @shortener
    else
      render 'new'
    end
  end

  def short_url
    root_url + '/' + slug
  end

  private

  def shortener_params
    params.require(:shortener).permit(:given_url)
  end

  def slug
    6.times.map { [*'0'..'9', *'a'..'z'].sample }.join
  end

end
