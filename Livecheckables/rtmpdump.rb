class Rtmpdump
  livecheck :url   => "https://cdn-aws.deb.debian.org/debian/pool/main/r/rtmpdump/",
            :regex => /rtmpdump_(\d.\d\+\d*).*.orig\.tar\.gz/
end
