class Shortener < ApplicationRecord

  before_create :generate_slug

  # Faire la validation côté serveur
  # validates :given_url, presence: true
  # validate :my_method

  def generate_slug
    self.slug = SecureRandom.base64(5)
  end

  def display_slug
    app_url + self.slug
  end

  private

  def app_url
    'http://shrtbtr.com'
  end

end
