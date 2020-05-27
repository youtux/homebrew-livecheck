class Clojure
  livecheck do
    url "https://github.com/clojure/brew-install.git"
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
