class Flawfinder
  livecheck do
    url :homepage
    regex(/href=.*?flawfinder-([0-9.]+)\.t/)
  end
end
