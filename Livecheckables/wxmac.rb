class Wxmac
  livecheck do
    url "https://github.com/wxWidgets/wxWidgets/releases"
    regex(%r{Latest.*?href="/wxWidgets/wxWidgets/tree/v?([0-9.]+)}m)
  end
end
