class Detekt
  livecheck do
    url "https://github.com/detekt/detekt.git"
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
