class Abuse
  livecheck do
    url "http://abuse.zoy.org/wiki/download"
    regex(/abuse[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
