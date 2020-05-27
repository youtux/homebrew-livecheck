class Leptonica
  livecheck do
    url "https://github.com/DanBloomberg/leptonica/releases"
    regex(%r{href="/DanBloomberg/leptonica/releases/tag/([\d\.]+)"})
  end
end
