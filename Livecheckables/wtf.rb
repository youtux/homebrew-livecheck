class Wtf
  livecheck do
    url :homepage
    regex(%r{.*?/wtf-v?(\d{6,8})\.t}i)
  end
end
