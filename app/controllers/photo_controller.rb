class PhotoController < ApplicationController
  def index
    uri = "https://api.instagram.com/v1/media/popular?client_id=" + Settings.instagram.client_id
    json = ''

    open(uri) do |f|
      json = f.read
    end
    data = JSON.parse(json)
    @h = Hashie::Mash.new(data)
  end

end
