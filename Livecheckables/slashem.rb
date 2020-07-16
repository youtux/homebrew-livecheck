class Slashem
  livecheck do
    url :stable
    regex(%r{url=.*?/slashem-source/([^/]+)/[^.]+\.t})
  end
end
