class Asio
  livecheck do
    url "https://sourceforge.net/projects/asio/"
    regex(%r{Stable.*?/asio[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
