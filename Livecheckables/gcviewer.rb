class Gcviewer
  livecheck do
    url :stable
    regex(%r{url=.*?/gcviewer[._-]v?(\d+(?:\.\d+)+)\.jar}i)
  end
end
