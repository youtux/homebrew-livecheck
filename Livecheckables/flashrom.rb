class Flashrom
  livecheck do
    url "https://download.flashrom.org/releases/"
    regex(/href=.*?flashrom-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
