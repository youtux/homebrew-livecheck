class Sylpheed
  livecheck do
    url "https://sylpheed.sraoss.jp/en/download.html"
    regex(%r{stable.*?href=".*?/sylpheed-([0-9.]+)\.t}m)
  end
end
