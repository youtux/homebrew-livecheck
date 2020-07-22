class Nickle
  livecheck do
    url "https://www.nickle.org/release/"
    regex(/href=.*?nickle-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
