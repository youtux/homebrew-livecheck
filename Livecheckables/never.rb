class Never
  livecheck do
    url "https://github.com/never-lang/never/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
