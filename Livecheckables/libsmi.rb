class Libsmi
  livecheck do
    url "https://www.ibr.cs.tu-bs.de/projects/libsmi/download/"
    regex(/href=.*?libsmi-([0-9.]+)\.t/i)
  end
end
