class Remctl
  livecheck do
    url "https://www.eyrie.org/~eagle/software/remctl/"
    regex(%r{href=".*?/remctl-([0-9\.]+)\.t})
  end
end
