class Ott
  livecheck do
    url "https://github.com/ott-lang/ott/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
