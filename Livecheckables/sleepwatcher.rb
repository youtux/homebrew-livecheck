class Sleepwatcher
  livecheck do
    url :homepage
    regex(/href=.*?sleepwatcher[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
