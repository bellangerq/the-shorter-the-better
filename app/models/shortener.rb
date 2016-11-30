class Shortener < ApplicationRecord

  validates :given_url, presence: true

  before_save :set_slug

  private

  def set_slug

    self.slug = 6.times.map { [*'0'..'9', *'a'..'z'].sample }.join

  end

end
