class Le
  livecheck do
    url "https://github.com/lavv17/le/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
