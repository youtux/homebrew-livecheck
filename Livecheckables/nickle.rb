class Nickle
  livecheck do
    url "https://www.nickle.org/release/"
    regex(/href="nickle-([0-9.]+)\.t/)
  end
end
