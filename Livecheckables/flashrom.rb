class Flashrom
  livecheck do
    url "https://download.flashrom.org/releases/"
    regex(/href=.*?flashrom-v?(\d+(?:\.\d+)+)\.t/)
  end
end
