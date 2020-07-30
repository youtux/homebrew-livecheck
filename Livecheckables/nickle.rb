class Nickle
  livecheck do
    url "https://www.nickle.org/release/"
    regex(/href=.*?nickle[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
