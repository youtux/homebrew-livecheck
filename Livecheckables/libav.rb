class Libav
  livecheck do
    url :homepage
    regex(/href=.*?libav-([0-9.]+)\.t/)
  end
end
