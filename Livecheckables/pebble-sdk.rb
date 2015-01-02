class PebbleSdk
  def livecheck
    page_match("https://developer.getpebble.com/sdk/", 'Current Version: (.*) \(')
  end
end
