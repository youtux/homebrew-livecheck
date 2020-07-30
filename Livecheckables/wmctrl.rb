class Wmctrl
  livecheck do
    url :homepage
    regex(/href=.*?wmctrl[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
