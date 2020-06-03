class Exiftran
  livecheck do
    url "https://www.kraxel.org/releases/fbida/"
    regex(/href="fbida-([0-9.]+)\.t/)
  end
end
