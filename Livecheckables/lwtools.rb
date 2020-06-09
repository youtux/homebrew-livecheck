class Lwtools
  livecheck do
    url :homepage
    regex(%r{href=".*?/lwtools-([0-9.]+)\.t})
  end
end
