class Mpich
  livecheck do
    url "https://www.mpich.org/downloads/"
    regex(%r{stable.*?href=".*?/mpich-([0-9a-z.]+)\.t})
  end
end
