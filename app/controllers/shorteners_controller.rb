class ShortenersController < ApplicationController
  include ApplicationHelper

  http_basic_authenticate_with name: ENV['AUTHENT_USER'], password: ENV['AUTHENT_PASSWORD'], except: [:new, :show, :create, :redirect]

  def index
    @shorteners = Shortener.all
    @shorteners = Shortener.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @shortener = Shortener.find(params[:id])
  end

  def redirect
    @shortener = Shortener.where(slug: params[:slug]).first

    @shortener.increment!(:count)

    redirect_to @shortener.given_url
  end

  def new
    @shortener = Shortener.new
  end

  def create
    @shortener = Shortener.new(shortener_params)

    if @shortener.save
      redirect_to shortener_url(@shortener)
    else
      render 'new'
    end
  end

  private

  def shortener_params
    params.require(:shortener).permit(
    :given_url,
    :count
    )
  end

end
