class Pidof
  livecheck do
    url :homepage
    regex(/href=.*?pidof[^>]+>\s*Download \(v?(\d+(?:\.\d+)+)\)</i)
  end
end
