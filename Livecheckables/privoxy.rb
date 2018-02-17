class Privoxy
  livecheck :url => "https://www.privoxy.org/feeds/privoxy-releases.xml",
            :regex => /privoxy-(.*?)-stable-src\.tar\.gz/
end
