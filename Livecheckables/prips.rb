class Prips
  livecheck do
    url :homepage
    regex(/current version .*?prips.*?([0-9.]+)/i)
  end
end
