class Physfs
  livecheck do
    url "https://icculus.org/physfs/downloads/"
    regex(/href=.*?physfs-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
