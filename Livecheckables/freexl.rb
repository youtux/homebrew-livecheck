class Freexl
  livecheck do
    url :homepage
    regex(%r{current version is <b>v?(\d+(?:\.\d+)+)</b>}i)
  end
end
