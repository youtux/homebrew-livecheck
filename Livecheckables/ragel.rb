class Ragel
  livecheck do
    url :homepage
    regex(%r{Stable.*?href=".*?/ragel-([0-9.]+)\.t}m)
  end
end
