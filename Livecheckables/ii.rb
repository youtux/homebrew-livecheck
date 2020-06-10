class Ii
  livecheck do
    url :homepage
    regex(%r{href=".*?/ii-([0-9.]+)\.t})
  end
end
