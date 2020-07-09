class Libsass
  livecheck do
    url "https://github.com/sass/libsass/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
