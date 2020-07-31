class Qrupdate
  livecheck do
    url :homepage
    regex(%r{url=.*?/qrupdate[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
