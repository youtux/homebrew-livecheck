class Pod2man
  livecheck do
    url "https://www.eyrie.org/~eagle/software/podlators/"
    regex(%r{href=".*?/podlators-([0-9\.]+)\.t})
  end
end
