class Libsmi
  livecheck do
    url "https://www.ibr.cs.tu-bs.de/projects/libsmi/download/"
    regex(/href=.*?libsmi-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
