class Apcupsd
  livecheck do
    url :stable
    regex(%r{url=.*?/apcupsd%20-%20Stable/[^/]+/apcupsd-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
