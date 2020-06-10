class Src
  livecheck do
    url :homepage
    regex(%r{href='.*?/src-([0-9.]+)\.t})
  end
end
