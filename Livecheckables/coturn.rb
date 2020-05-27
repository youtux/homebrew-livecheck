class Coturn
  livecheck do
    url "http://turnserver.open-sys.org/downloads/"
    regex(%r{href="v?(\d+(?:\.\d+)+)/"})
  end
end
