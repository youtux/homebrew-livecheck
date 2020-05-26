class CdogsSdl
  livecheck do
    url "https://github.com/cxong/cdogs-sdl/releases"
    regex(%r{Latest.*?href="/cxong/cdogs-sdl/tree/v?([0-9\.]+)}m)
  end
end
