class Prodigal
  livecheck do
    url "https://github.com/hyattpd/Prodigal/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
