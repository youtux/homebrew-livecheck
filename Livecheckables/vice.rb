class Vice
  livecheck do
    url :homepage
    regex(%r{.*?/vice-([0-9.]+)\.t}i)
  end
end
