class Avrdude
  livecheck do
    url "https://download.savannah.gnu.org/releases/avrdude/"
    regex(/href=.*?avrdude-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
