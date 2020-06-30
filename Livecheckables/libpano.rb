class Libpano
  livecheck do
    url :stable
    regex(%r{url=.+?/libpano(\d+-\d+(?:\.\d+)+)\.t})
  end
end
