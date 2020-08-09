class Minidjvu
  livecheck do
    url :stable
    regex(%r{url=.*?/minidjvu[._-]v?((?!0\.33)\d+(?:\.\d+)+)\.t}i)
  end
end
