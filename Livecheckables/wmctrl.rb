class Wmctrl
  livecheck do
    url :homepage
    regex(/href=.*?wmctrl-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
