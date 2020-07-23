class Sylpheed
  livecheck do
    url "https://sylpheed.sraoss.jp/en/download.html"
    regex(%r{stable.*?href=.*?/sylpheed-v?(\d+(?:\.\d+)+)\.t}im)
  end
end
