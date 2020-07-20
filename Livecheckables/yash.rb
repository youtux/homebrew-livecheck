class Yash
  livecheck do
    url "https://osdn.jp/projects/yash/releases/rss"
    regex(%r{(\d+(?:\.\d+)+)</title>}i)
  end
end
