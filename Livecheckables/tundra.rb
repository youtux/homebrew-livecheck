class Tundra
  livecheck do
    url "https://github.com/deplinenoise/tundra/releases"
    regex(%r{Latest.*?href="/deplinenoise/tundra/tree/v?([0-9\.]+)}m)
  end
end
