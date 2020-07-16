class Hercules
  livecheck do
    url :homepage
    regex(/href=.*?hercules-([0-9.]+)\.t/)
  end
end
