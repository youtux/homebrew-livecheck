class PebbleSdk
  def get_latest_version
    require 'net/http'
    url = "https://developer.getpebble.com/sdk/"

    page = Net::HTTP.get(URI(url))
    version = page.match('Current Version: (.*) \(')[1]
    Version.new(version)
  end
end
