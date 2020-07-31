class Libsoxr
  livecheck do
    url :stable
    regex(%r{/soxr[._-]v?(\d+(?:\.\d+)+)(?:-Source)?\.t}i)
  end
end
