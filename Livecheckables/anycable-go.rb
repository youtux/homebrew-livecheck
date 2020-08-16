class AnycableGo
  livecheck do
    url "https://github.com/anycable/anycable-go/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
