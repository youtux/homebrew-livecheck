class Podiff
  livecheck do
    url "https://download.gnu.org.ua/pub/release/podiff/"
    regex(/href=.*?podiff[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
