class CdogsSdl
  livecheck do
    url "https://github.com/cxong/cdogs-sdl/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
