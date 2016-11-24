class Shortener < ApplicationRecord

  validates :given_url, presence: true

end
