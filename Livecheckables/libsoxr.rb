class Libsoxr
  livecheck do
    url :stable
    regex(%r{url=.*?/soxr[._-]v?(\d+(?:\.\d+)+)(?:-Source)?\.t}i)
  end
end
