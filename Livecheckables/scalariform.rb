class Scalariform
  livecheck do
    url "https://github.com/scala-ide/scalariform/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
