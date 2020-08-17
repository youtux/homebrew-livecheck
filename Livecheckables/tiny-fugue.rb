class TinyFugue
  livecheck do
    url :stable
    regex(%r{url=.*?/tf[._-]v?(\d+(?:\.\d+)*(?:[a-z]\d+?)?)\.t}i)
  end
end
