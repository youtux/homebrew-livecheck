class FbClient
  livecheck do
    url "https://paste.xinu.at/"
    regex(%r{Latest release:.*?/fb-([0-9\.]+)\.t})
  end
end
