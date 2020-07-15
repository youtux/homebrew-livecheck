class Chicken
  livecheck do
    url "https://code.call-cc.org/releases/current/"
    regex(/href=.*?chicken-([0-9.]+)\.t/)
  end
end
