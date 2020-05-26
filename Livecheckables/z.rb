class Z
  livecheck do
    url "https://github.com/rupa/z/releases/latest"
    regex(%r{href=.+/tag/v?(\d+(?:\.\d+)+)})
  end
end
