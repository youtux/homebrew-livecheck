class Aalib
  # The latest version in the formula is a release candidate, so we have to
  # allow matching of unstable versions.
  livecheck do
    url :stable
    regex(%r{url=.*?/aalib[._-]v?(\d+(?:\.\d+)+.*?)\.t}i)
  end
end
