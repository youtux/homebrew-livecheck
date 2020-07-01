class Libsoxr
  livecheck do
    url :stable
    regex(%r{/soxr-v?(\d+(?:\.\d+)+)(?:-Source)?\.t}i)
  end
end
