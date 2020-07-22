class Graphicsmagick
  livecheck do
    url :homepage
    regex(/<td>v?(\d+(?:\.\d+)+) \(Released/i)
  end
end
