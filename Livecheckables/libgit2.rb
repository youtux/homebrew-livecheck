class Libgit2
  livecheck do
    url "https://github.com/libgit2/libgit2/releases/latest"
    regex(%r{href=.+?/tag/v?(\d+(?:\.\d+)+)})
  end
end
