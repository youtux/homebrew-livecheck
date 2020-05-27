class Tin
  livecheck do
    url "http://www.tin.org"
    regex(%r{tin-current\.t.*?>TIN ([0-9\.]+)</A>.*?stable})
  end
end
