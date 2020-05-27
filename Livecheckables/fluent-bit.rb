class FluentBit
  livecheck do
    url "https://fluentbit.io/announcements/"
    regex(%r{href=".*?/announcements/v?([0-9]+\.[0-9\.]+)/"})
  end
end
