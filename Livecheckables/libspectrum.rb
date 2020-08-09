class Libspectrum
  livecheck do
    url :stable
    regex(%r{url=.*?/libspectrum[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
