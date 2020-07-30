class Rarian
  livecheck do
    url "https://rarian.freedesktop.org/Releases/"
    regex(/href=.*?rarian[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
