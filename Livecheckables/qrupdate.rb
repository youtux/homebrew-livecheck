class Qrupdate
  livecheck do
    url :homepage
    regex(%r{url=.*?/qrupdate-v?(\d+(?:\.\d+)+)\.t})
  end
end
