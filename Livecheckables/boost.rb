class Boost
  livecheck :url => "https://www.boost.org/feed/downloads.rss",
            :regex => /Version ([0-9\.]+)/
end
