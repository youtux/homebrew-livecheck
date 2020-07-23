class Pngquant
  livecheck do
    url "https://pngquant.org/releases.html"
    regex(%r{href=.*?/pngquant-v?(\d+(?:\.\d+)+)-src\.t}i)
  end
end
