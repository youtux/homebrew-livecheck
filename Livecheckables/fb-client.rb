class FbClient
  livecheck do
    url :homepage
    regex(%r{Latest release:.*?/fb-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
