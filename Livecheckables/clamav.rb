class Clamav
  livecheck do
    url "https://www.clamav.net/downloads"
    regex(%r{href=".*?/clamav-([0-9\.]+)\.t})
  end
end
