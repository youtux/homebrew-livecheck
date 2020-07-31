class Privoxy
  livecheck do
    url "https://www.privoxy.org/feeds/privoxy-releases.xml"
    regex(/privoxy[._-]v?(\d+(?:\.\d+)+)-stable-src\./i)
  end
end
