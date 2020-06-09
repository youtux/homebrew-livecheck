class FbClient
  livecheck do
    url :homepage
    regex(%r{Latest release:.*?/fb-([0-9.]+)\.t})
  end
end
