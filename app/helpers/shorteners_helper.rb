module ShortenersHelper
  def short_url(shortener)
    "#{root_url}/#{shortener.slug}"
  end
end
