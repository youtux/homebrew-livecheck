class Rmtrash
  livecheck do
    url :homepage
    regex(/href=.*?rmtrash[^>]+>\s*Download \(v?(\d+(?:\.\d+)+)\)</i)
  end
end
