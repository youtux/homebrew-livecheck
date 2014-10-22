require 'formula'

class PebbleSdk
  def livecheck
    require 'net/http'
    url = "https://developer.getpebble.com/sdk/"

    page = Net::HTTP.get(URI(url))
    version = page.match('Current Version: (.*) \(')[1]
  end
end
