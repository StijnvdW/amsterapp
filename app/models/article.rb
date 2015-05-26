require 'uri'

class Article < ActiveRecord::Base
  validates :title, presence: true
  validates :link, presence: true

  #Haal base url op
  def basis_url
    uri = URI.parse(link)
    return "#{uri.scheme}://#{uri.host}"
  end
end