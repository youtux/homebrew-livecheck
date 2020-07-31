class Apcupsd
  livecheck do
    url :stable
    regex(%r{url=.*?/apcupsd%20-%20Stable/[^/]+/apcupsd[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
