class Advancemame
  livecheck do
    url "https://github.com/amadvance/advancemame/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
