class Physfs
  livecheck do
    url "https://icculus.org/physfs/downloads/"
    regex(/href=.*?physfs[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
