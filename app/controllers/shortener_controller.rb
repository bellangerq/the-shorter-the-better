class ShortenerController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def create
    # raise params.inspect
    shortener = Shortener.new
  end

  private

  def shortened_link
    shortened_link = "#{app_url}/#{slug_id}"
  end

end
