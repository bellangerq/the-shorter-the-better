class ShortenersController < ApplicationController
  def new
  end

  def create
    render plain: params[:shortener].inspect
  end
end
