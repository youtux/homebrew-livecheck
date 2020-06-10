class Vice
  livecheck do
    url :homepage
    regex(%r{.*?/vice-([0-9.]+)\.t})
  end
end
