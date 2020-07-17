class Proguard
  livecheck do
    url "https://github.com/Guardsquare/proguard/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
