class Mutt
  livecheck do
    url :homepage
    regex(/Mutt v?(\d+(?:\.\d+)+) was released/i)
  end
end
