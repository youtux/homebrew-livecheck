class Qrupdate
  livecheck do
    url "https://sourceforge.net/projects/qrupdate/"
    regex(%r{url=.+?/qrupdate-v?(\d+(?:\.\d+)+)\.t})
  end
end
