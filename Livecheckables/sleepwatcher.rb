class Sleepwatcher
  livecheck do
    url :homepage
    regex(/href=.*?sleepwatcher.v?(\d+(?:\.\d+)+)\.t/i)
  end
end
