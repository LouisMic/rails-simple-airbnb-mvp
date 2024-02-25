class Flat < ApplicationRecord
  require "json"
  require "open-uri"

  def markers
    url = "https://api.mapbox.com/geocoding/v5/mapbox.places/#{address.gsub(" ", "%20")}.json?access_token=#{ENV['MAPBOX_API_KEY']}"
    flat_coord = JSON.parse(URI.open(url).read)["features"][0]["center"]

    return {
      long: flat_coord[0],
      lat: flat_coord[1]
    }
  end
end
