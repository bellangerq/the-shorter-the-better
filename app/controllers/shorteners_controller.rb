class ShortenersController < ApplicationController
  include ApplicationHelper

  http_basic_authenticate_with name: "quentin", password: "nitneuq", except: [:new, :show, :create, :redirect]
  # http_basic_authenticate_with name: ENV['AUTHENT_USER'], password: ENV['AUTHENT_PASSWORD'], except: [:new, :show, :create, :redirect]

  def index
    @shorteners = Shortener.all
    @shorteners = Shortener.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @shortener = Shortener.find(params[:id])
  end

  def redirect
    @shortener = Shortener.where(slug: params[:slug]).first

    # Add count on every show action
    # @shortener.count += 1
    # @shortener.save!

    # increment! directly save in database
    @shortener.increment!(:count)

    redirect_to @shortener.given_url
  end

  def create
    @shortener = Shortener.new(shortener_params)
    # @shortener.slug = slug
    # @shortener.created_by = current_user

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
