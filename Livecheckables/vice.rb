class Vice
  livecheck do
    url :homepage
    regex(%r{.*?/vice-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
