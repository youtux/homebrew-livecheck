class Yaws
  livecheck do
    url "https://github.com/klacke/yaws/releases"
    regex(/href=".*yaws-([0-9.]+)\.t/)
  end
end
