class Exiftran
  livecheck do
    url "https://www.kraxel.org/releases/fbida/"
    regex(/href=.*?fbida[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
