class Yash
  livecheck :url   => "https://osdn.jp/projects/yash/releases/rss",
            :regex => %r{(\d+(?:\.\d+)+)</title>}
end
