class Sleepwatcher
  livecheck do
    url :homepage
    regex(/href=.*?sleepwatcher_v?(\d+(?:\.\d+)+)\.t/i)
  end
end
