class Conan
  livecheck do
    url "https://github.com/conan-io/conan/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
