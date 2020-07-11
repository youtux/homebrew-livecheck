class Supertux
  livecheck do
    url "https://github.com/SuperTux/supertux/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
