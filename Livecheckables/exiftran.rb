class Exiftran
  livecheck do
    url "https://www.kraxel.org/releases/fbida/"
    regex(/href=.*?fbida-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
