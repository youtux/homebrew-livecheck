class Abuse
  livecheck do
    url "http://abuse.zoy.org/wiki/download"
    regex(/abuse-(\d+(?:\.\d+)+)\.t/)
  end
end
