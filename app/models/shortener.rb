require 'digest'

class Shortener < ApplicationRecord

  validates :given_url, presence: true

  before_save :set_slug

  private

  def set_slug

    self.slug = 6.times.map { [*'0'..'9', *'a'..'z'].sample }.join

    # Avantage : less chance to get the same
    # http://stackoverflow.com/questions/5854208/ruby-can-i-create-a-md5-hash-of-length-8
    # self.slug = Digest::MD5.hexdigest("#{self.given_url}-#{"mon secret"}")[0...5]

  end

end
