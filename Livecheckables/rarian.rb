class Rarian
  livecheck do
    url "https://rarian.freedesktop.org/Releases/"
    regex(/href=.*?rarian-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
