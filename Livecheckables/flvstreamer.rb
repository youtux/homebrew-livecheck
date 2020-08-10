class Flvstreamer
  livecheck do
    url "https://download.savannah.gnu.org/releases/flvstreamer/source/"
    regex(/href=.*?flvstreamer[._-]v?(\d+(?:\.\d+)+(?:[a-z]\d*)?)\.t/i)
  end
end
