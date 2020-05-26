class Stunnel
  livecheck do
    url "https://www.stunnel.org/downloads.html"
    regex(%r{href=".*?/stunnel-([0-9\.]+)\.t})
  end
end
