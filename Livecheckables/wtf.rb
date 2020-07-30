class Wtf
  livecheck do
    url :homepage
    regex(%r{.*?/wtf[._-]v?(\d{6,8})\.t}i)
  end
end
