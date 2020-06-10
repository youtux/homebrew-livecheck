class Deark
  livecheck do
    url :homepage
    regex(%r{href=".*?/deark-([0-9.]+)\.t})
  end
end
