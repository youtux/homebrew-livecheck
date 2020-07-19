class Tin
  livecheck do
    url :homepage
    regex(%r{tin-current\.t.*?>TIN ([0-9.]+)</A>.*?stable}i)
  end
end
