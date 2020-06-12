class Pidof
  livecheck do
    url :homepage
    regex(/href=.*?pidof.*Download \(v?(\d+(?:\.\d+)+)\)</i)
  end
end
