class Wtf
  livecheck do
    url :stable
    regex(%r{url=.*?/wtf[._-]v?(\d{6,8})\.t}i)
  end
end
