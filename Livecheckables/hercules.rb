class Hercules
  livecheck do
    url :homepage
    regex(%r{href=".*?/hercules-([0-9.]+)\.t})
  end
end
