class Sslscan
  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)-rbsec$/i)
  end
end
