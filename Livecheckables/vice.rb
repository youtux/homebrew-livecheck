class Vice
  livecheck do
    url :homepage
    regex(%r{.*?/vice[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
