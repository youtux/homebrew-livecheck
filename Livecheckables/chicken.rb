class Chicken
  livecheck do
    url "https://code.call-cc.org/releases/current/"
    regex(/href=.*?chicken-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
