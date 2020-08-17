class SblimSfcc
  livecheck do
    url :stable
    regex(%r{url=.*?/sblim-sfcc[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
