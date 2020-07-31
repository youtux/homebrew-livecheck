class LittleCms
  livecheck do
    url :stable
    regex(%r{url=.*?/lcms[._-]v?(1(?:\.\d+)+)\.t}i)
  end
end
