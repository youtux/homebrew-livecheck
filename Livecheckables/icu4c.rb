class Icu4c
  livecheck do
    url "https://github.com/unicode-org/icu/releases/latest"
    regex(%r{href=.*?/tag/release[._-]v?(\d+(?:[.-]\d+)+)["' >]}i)
  end
end
