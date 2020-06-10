class Pike
  livecheck do
    url :homepage
    regex(%r{href=".*?/latest-stable/Pike-v([0-9.]+)\.t})
  end
end
