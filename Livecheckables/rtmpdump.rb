class Rtmpdump
  livecheck do
    url "https://cdn-aws.deb.debian.org/debian/pool/main/r/rtmpdump/"
    regex(/href=.*?rtmpdump[._-]v?(\d.\d\+\d*).*.orig\.t/i)
  end
end
