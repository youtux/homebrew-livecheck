class Dmenu
  livecheck do
    url "https://dl.suckless.org/tools/"
    regex(/href=.*?dmenu-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
