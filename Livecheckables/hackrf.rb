class Hackrf
  livecheck do
    url "https://github.com/mossmann/hackrf/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
