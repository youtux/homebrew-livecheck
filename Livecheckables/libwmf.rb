class Libwmf
  livecheck do
    url :stable
    regex(%r{url=.*?/libwmf-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
