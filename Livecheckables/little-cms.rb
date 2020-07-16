class LittleCms
  livecheck do
    url :stable
    regex(%r{url=.*?/lcms-v?(1(?:\.\d+)+)\.t})
  end
end
