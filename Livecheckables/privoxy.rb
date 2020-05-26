class Privoxy
  livecheck do
    url "https://www.privoxy.org/feeds/privoxy-releases.xml"
    regex(/privoxy-([0-9\.]+)-stable-src\./)
  end
end
