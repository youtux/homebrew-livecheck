class Icu4c
  livecheck do
    url "https://github.com/unicode-org/icu/releases"
    regex(%r{href="/unicode-org/icu/releases/tag/release-[^"]+"[^>]*>ICU ([\d.]+)<})
  end
end
