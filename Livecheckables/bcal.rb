class Bcal
  livecheck do
    url "https://github.com/jarun/bcal/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
