class Flat < ApplicationRecord
  def convert_address
    address.gsub(" ", "%20");
  end
end
