class Jpeg
  livecheck do
    url "https://www.ijg.org/"
    regex(/current version is release ([0-9.a-z]+)/)
  end
end
