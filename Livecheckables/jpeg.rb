class Jpeg
  livecheck do
    url :homepage
    regex(/current version is release ([0-9.a-z]+)/i)
  end
end
