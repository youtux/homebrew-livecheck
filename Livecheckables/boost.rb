class Boost
  livecheck :url => "http://www.boost.org/feed/downloads.rss",
            :regex => /Version ([0-9\.]+)/
end
