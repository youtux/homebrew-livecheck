class Rtmpdump
  livecheck do
    url "https://cdn-aws.deb.debian.org/debian/pool/main/r/rtmpdump/"
    regex(/rtmpdump_(\d.\d\+\d*).*.orig\.t/i)
  end
end
