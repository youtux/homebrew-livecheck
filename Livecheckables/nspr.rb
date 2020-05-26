class Nspr
  livecheck do
    url "https://ftp.mozilla.org/pub/nspr/releases/"
    regex(/v(\d+(?:\.\d+)*)/)
  end
end
