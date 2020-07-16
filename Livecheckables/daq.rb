class Daq
  livecheck do
    url "https://www.snort.org/downloads"
    regex(/id=["']?snort_stable_version["']?.*?href=.*?daq[._-]v?(\d+(?:\.\d+)+)\.t/im)
  end
end
