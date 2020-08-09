class Aview
  livecheck do
    url :stable
    regex(%r{url=.*?/aview[._-]v?(\d+(?:\.\d+)+(?:[a-z]+\d*)?)\.t}i)
  end
end
