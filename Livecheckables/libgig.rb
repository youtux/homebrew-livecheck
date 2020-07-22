class Libgig
  livecheck do
    url "https://download.linuxsampler.org/packages/"
    regex(/href=.*?libgig-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
