class Dmenu
  livecheck do
    url "https://dl.suckless.org/tools/"
    regex(/href="dmenu-([0-9,.]+)\.tar/)
  end
end
