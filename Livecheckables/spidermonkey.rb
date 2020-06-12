class Spidermonkey
  livecheck do
    url "https://developer.mozilla.org/en-US/docs/Mozilla/Projects/SpiderMonkey/Releases"
    regex(%r{href=.*?Releases/v?(\d+(?:\.\d+)*)}i)
  end
end
